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
		DBConnection obj = new DBConnection();
		protected void btnLogin_Click(object sender, EventArgs e)
		{
		//	string username = txtUsername.Text.Trim();
		//	string password = txtPassword.Text.Trim();

			///*SqlParameter[] param = new SqlParameter[]
			//{
			//new SqlParameter("@Phone",""),
			//new SqlParameter("@Password",password),
			//new SqlParameter("@CreatedBy",username),
			//new SqlParameter("@Operation", 2)
			//};

			//DataTable dt = obj.ExecSPReader("csm_login.UserManage", param);
			//if (dt.Rows.Count > 0)
			//{
			//	Session["Username"] = username;
			//	Response.Redirect("Dashboard.aspx");
			//}
			//else
			//{
			//	lblMessage.Text = "Invalid username or password.";
			//}*/
		}
	}
}