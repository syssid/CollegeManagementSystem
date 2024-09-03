using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CollegeManagementSystem.DBContext;

namespace CollegeManagementSystem
{
	public partial class Login : System.Web.UI.Page
	{
		DBConnection objLogin = new DBConnection();
		protected void btnLogin_Click(object sender, EventArgs e)
		{
			string Email = txtEmail.Text.Trim();
			string Password = txtPassword.Text.Trim();

			byte[] passwordBytes = System.Text.Encoding.UTF8.GetBytes(Password);
			string base64Password = Convert.ToBase64String(passwordBytes);

			SqlParameter[] param = new SqlParameter[]
			{
			new SqlParameter("@EmailID",Email),
			new SqlParameter("@Password",base64Password)
			};

			DataTable dt = objLogin.ExecSPReader("CMS_SP_USER_LOGIN", param);
			if (dt.Rows.Count > 0)
			{
				Session["Username"] = Email;
				Response.Redirect("Dashboard.aspx");
			}
			else
				lblMessage.Text = "Invalid username or password.";
		}
	}
}