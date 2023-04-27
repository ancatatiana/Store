using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Store
{
    public partial class Register : System.Web.UI.Page
    {
        string gender;
        private int name;

        protected void Page_Load(object sender, EventArgs e)
        {

            
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)MSSQLLocalDB;Initial Catalog=Store;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            //SqlCommand cmd = new SqlCommand("@INSERT INTO [dbo].[tbRegister] 

            //([name] 
            //,[adress] 
            //,[gender] 
            //,[phone] 
            //,[email] 
            //,[username] 
            //,[password])
            //VALUES
            //('"+txtName.Text+'", '"+txtAddres.Text+'",'"+gender+'",'"+txtPhone.Text+'",'"+txtEmail.Text+"','"+txtUser.Text+'",'"+txtPassword.Text+'")",con);

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = @"INSERT 
                                    INTO tbRegister
                                    ( firstname,
                                      lastname,
                                      username,
                                      password,
                                      adress,
                                      email,
                                      gender,
                                      phone
                                       
                                    ) 
                                    VALUES(
                                      @firstname,
                                      @lastname,
                                      @username,
                                      @password,
                                      @adress,
                                      @email,
                                      @gender,
                                      @phone
                                    )";


            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('user is registred sucessfully')</script>");
            
        }
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            gender = "male";
        }
        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            gender = "female";
        }
        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            gender = "others";
        }
    }
}