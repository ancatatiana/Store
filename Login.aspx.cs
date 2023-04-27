using Biblioteca;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Store
{
    public partial class Login : System.Web.UI.Page
    {
        private string email;
        private string username;
        private string password;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConnectioString.LocalConnectionString);

            SqlCommand com = con.CreateCommand();

            com.CommandText = @"SELECT * FROM tbRegister where username=@username ";

            com.Parameters.AddWithValue("username", @username);
            com.Parameters.AddWithValue("email", @email);
            com.Parameters.AddWithValue("password", @password);
        }
        public static bool CheckIfUserExist(string username)
        {

            SqlConnection con = new SqlConnection(ConnectioString.LocalConnectionString);
            SqlCommand cmd = new SqlCommand("Select Count(*)  from tbRegister where Username ='" + username + "'", con);
            SqlDataReader sReader = null;
            Int32 numberOfRows = 0;
            try
            {
                con.Open();
                sReader = cmd.ExecuteReader();

                while (sReader.Read())
                {
                    if (!sReader.IsDBNull(0))
                    {
                        numberOfRows = Convert.ToInt32(sReader[0]);
                        if (numberOfRows > 0)
                        {
                            return true;
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
            }
            return false;

                
}   }   }
 