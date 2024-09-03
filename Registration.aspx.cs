using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CollegeManagementSystem.DBContext;

namespace CollegeManagementSystem
{
	public partial class Registration : System.Web.UI.Page
	{
		DBConnection obj = new DBConnection();

		protected void btnRegister_Click(object sender, EventArgs e)
		{
			/*string username = txtUsername.Text.Trim();
			string phone = txtPhone.Text.Trim();
			string password = txtPassword.Text.Trim();
			SqlParameter[] param = new SqlParameter[]
			{
			new SqlParameter("@Phone",phone),
			new SqlParameter("@Password",password),
			new SqlParameter("@CreatedBy",username),
			new SqlParameter("@Operation", 1)
			};

			DataTable dt = obj.ExecSPReader("csm_login.UserManage", param);
			if (dt.Rows.Count> 0)
			{
				Response.Redirect("Login.aspx");
			}*/
			
		}
	}
}