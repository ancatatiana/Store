using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI.WebControls;

namespace Store
{
    public class AccountController
    {
        private object await_accountRepository;

        [AllowAnoymus, HTTpGet("forgot-password")]
        public IActionResult ForgotPassword()
        {
            return View();
        }

        private IActionResult View()
        {
            throw new NotImplementedException();
        }
        [AllowAnoymus, HTTpGet("forgot-password")]
        public IActionResult ForgotPassword(ForgotPasswordModel model)
        {
            
            model.EmailSent = true;

            return View();
        }
       
    }
}