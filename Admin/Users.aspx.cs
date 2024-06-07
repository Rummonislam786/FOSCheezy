using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace FOSCheezy.Admin
{
    public partial class Users : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;
        private void getUsers()
        {
            con = new SqlConnection(Connection.GetConnectionString());
            cmd = new SqlCommand("USER_REG_CRUD", con);
            cmd.Parameters.AddWithValue("@Action ", "SELECT4ADMIN");
            cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            rUsers.DataSource = dt;
            rUsers.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["breadcrum"] = "Users";
                if (Session["admin"] == null)
                {
                    Response.Redirect("../User/Login.aspx");
                }
                else
                {
                    getUsers();
                }
                
            }
        }

        protected void rUsers_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "delete")
            {
                con = new SqlConnection(Connection.GetConnectionString());
                cmd = new SqlCommand("USER_REG_CRUD", con);
                cmd.Parameters.AddWithValue("@Action", "DELETE");
                cmd.Parameters.AddWithValue("@UserId", e.CommandArgument);
                cmd.CommandType = CommandType.StoredProcedure;
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    lblMsg.Text = "User deleted successfully";
                    lblMsg.CssClass = "alert alert-success";
                    getUsers();

                }
                catch (Exception ex)
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Error-" + ex.Message;
                    lblMsg.CssClass = "alert alert-danger";

                }
                finally
                {
                    con.Close();
                }
            }
        }

        protected void rUsers_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }
    }
}