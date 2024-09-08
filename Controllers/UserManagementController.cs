using CollegeManagementSystem.DBContext;
using CollegeManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace CollegeManagementSystem.Controllers
{
    public class UserManagementController : ApiController
    {
		DBConnection objRegistration = new DBConnection();
		[HttpPost]
		[Route("api/UserManagement/RegisterNewUser")]
		public int RegisterNewUser(Registration registration)
		{
			byte[] passwordBytes = System.Text.Encoding.UTF8.GetBytes(registration.Password);
			string base64Password = Convert.ToBase64String(passwordBytes);

			SqlParameter[] param = new SqlParameter[]
			{
			new SqlParameter("@PhoneNumber",registration.PhoneNumber),
			new SqlParameter("@EmailID",registration.EmailID),
			new SqlParameter("@Password",base64Password),
			new SqlParameter("@FirstName",registration.FirstName),
			new SqlParameter("@LastName",registration.LastName),
			new SqlParameter("@Role",registration.Role),
			new SqlParameter("@CreatedBy",registration.UserName)
			};

			int result = objRegistration.ExecNonQuery("CMS_SP_USER_REGISTRATION", param);

			return result;
		}
	}
}
