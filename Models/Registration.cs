using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CollegeManagementSystem.Models
{
    public class Registration
    {
        public string PhoneNumber { get; set; }
        public string MasterID { get; set; }
        public string EmailID { get; set; }
        public string Password { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Role { get; set; }
        public string UserName { get; set; }
        public int Status { get; set; }

    }
}