using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Store
{
    public class ForgotPasswordModel
    {
        [Required, EmailAddress, Display(Name ="Registerd email address")]
        public string Email { get; set; }
        public bool EmailSent { get; set; }

    }
}