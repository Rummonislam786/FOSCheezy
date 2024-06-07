using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FOSCheezy.User
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["userId"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else if (Session["userId"]!=null)
                {
                    getUserDetails();
                }
            }
        }
        void getUserDetails()
        {
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("USER_REG_CRUD", con);
            cmd.Parameters.AddWithValue("@Action", "SELECT4PROFILE");
            cmd.Parameters.AddWithValue("@UserId", Session["userId"]);
            cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            rUserProfile.DataSource = dt;
            rUserProfile.DataBind();    
            if (dt.Rows.Count > 0)
            {
                Session["name"] = dt.Rows[0]["Name"].ToString();
                Session["email"] = dt.Rows[0]["Email"].ToString();
                Session["ImageUrl"] = dt.Rows[0]["ImageUrl"].ToString();
                Session["CreatedDate"] = dt.Rows[0]["CreatedDate"].ToString();
            }
            
        }
    }
}