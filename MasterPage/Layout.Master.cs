using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeManagementSystem.MasterPage
{
	public partial class Layout : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (Session["Username"] != null)
			{
				HiddenFieldEmail.Value = Session["Username"].ToString();
				HiddenFieldName.Value = Session["PersonName"].ToString();
				HiddenFieldRole.Value = Session["Role"].ToString();
			}


			// Ensure that caching is disabled to prevent the back button issue
			Response.Cache.SetCacheability(HttpCacheability.NoCache);
			Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
			Response.Cache.SetNoStore();
			Response.Cache.SetRevalidation(HttpCacheRevalidation.AllCaches);
		}


		protected void btnLogout_Click(object sender, EventArgs e)
		{
			// Clear the session
			Session.Abandon();
			Session.Clear();

			// Clear the authentication cookie (if any)
			HttpCookie cookie = new HttpCookie("ASP.NET_SessionId", "");
			cookie.Expires = DateTime.Now.AddYears(-1);
			Response.Cookies.Add(cookie);

			// Clear cache
			Response.Cache.SetCacheability(HttpCacheability.NoCache);
			Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
			Response.Cache.SetNoStore();

			// Redirect to the login page
			Response.Redirect("~/Login.aspx");
		}

	}
}