using CollegeManagementSystem.DBContext;
using CollegeManagementSystem.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace CollegeManagementSystem.Controllers
{
    public class UserManagementController : ApiController
    {
        DBConnection obj = new DBConnection();
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
            new SqlParameter("@CreatedBy",registration.UserName),
            new SqlParameter("@CreatedOn",DateTime.Now)
            };

            int result = obj.ExecNonQuery("CMS_SP_USER_REGISTRATION", param);

            return result;
        }
        [HttpPost]
        [Route("api/UserManagement/ShowUserForManage")]
        public HttpResponseMessage ShowUserForManage(Registration registration)
        {
            SqlParameter[] param = new SqlParameter[]
            {
            new SqlParameter("@MasterID",""),
            new SqlParameter("@Status",registration.Status),
            new SqlParameter("@Opration",1)
            };
            DataTable dt = obj.ExecSPReader("CMS_SP_USER_ENABLE_DISABLE", param);
            if (dt.Rows.Count > 0)
                return Request.CreateResponse(HttpStatusCode.OK, dt);
            else
                return Request.CreateResponse(HttpStatusCode.OK, "No Data Found");
        }

        [HttpPost]
        [Route("api/UserManagement/DisableEnableUser")]
        public int DisableEnableUser(Registration registration)
        {
            SqlParameter[] param = new SqlParameter[]
            {
            new SqlParameter("@MasterID",registration.MasterID),
            new SqlParameter("@Status",registration.Status),
            new SqlParameter("@Opration",2)
            };
            int result = obj.ExecNonQuery("CMS_SP_USER_ENABLE_DISABLE", param);

            return result;
        }
    }
}
