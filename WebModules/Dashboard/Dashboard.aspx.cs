using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeManagementSystem
{
	public partial class Dashboard : System.Web.UI.Page
	{

		protected void Page_Load(object sender, EventArgs e)
		{
			// Disable caching to prevent back navigation
			Response.Cache.SetCacheability(HttpCacheability.NoCache);
			Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
			Response.Cache.SetNoStore();
			Response.Cache.SetRevalidation(HttpCacheRevalidation.AllCaches);

			// Check if the user is authenticated
			if (Session["Username"] == null)
			{
				Response.Redirect("Login.aspx");
			}
			else
			{
				Label lblUsername = (Label)Master.FindControl("lblWelcome");
				if (lblUsername != null)
				{
					lblUsername.Text = "Welcome, " + Session["Username"].ToString();
				}
			}
		}
	}
}