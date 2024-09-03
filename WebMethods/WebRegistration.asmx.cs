using CollegeManagementSystem.DBContext;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace CollegeManagementSystem.WebMethods
{
	/// <summary>
	/// Summary description for WebRegistration
	/// </summary>
	[WebService(Namespace = "http://tempuri.org/")]
	[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
	[System.ComponentModel.ToolboxItem(false)]
	// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
	[System.Web.Script.Services.ScriptService]

	public class WebRegistration : System.Web.Services.WebService
	{
		DBConnection objRegistration = new DBConnection();
		public struct Registration
		{
			public string PhoneNumber { get; set; }
			public string EmailID { get; set; }
			public string Password { get; set; }
			public string FirstName { get; set; }
			public string LastName { get; set; }
		}
		[WebMethod]
		public object RegisterNewUser(Registration registration)
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
			new SqlParameter("@Role","Admin"),
			new SqlParameter("@CreatedBy","sidharthabehera@live.com"),
			};

			int? result = objRegistration.ExecNonQuery("CMS_SP_USER_REGISTRATION", param);
			
			return result;
		}
	}
}
