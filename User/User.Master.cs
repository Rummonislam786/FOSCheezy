using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace FOSCheezy.User
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Request.Url.AbsoluteUri.ToString().Contains("Default.aspx"))
            {
                form1.Attributes.Add("class", "sub_page");
            }
            else 
            {
                form1.Attributes.Remove("class");

                Control sliderUserControl = (Control)Page.LoadControl("SliderUserControl1.ascx");

                pnlSliderUC.Controls.Add(sliderUserControl);
            }
            if (Session["userId"] !=null)
            {
                Label1.Visible= false;
                lblLoginorLogout.Visible=true;
                Utils utils = new Utils();
                Session["cartCount"] = utils.cartCount(Convert.ToInt32(Session["userId"])).ToString();

            }
            else
            {
                //lblLoginorLogout.Text = "Login";
                Label1.Visible = true;
                lblLoginorLogout.Visible=false;
                Session["cartCount"] = "0";

            }
        }

        protected void lblLoginorLogout_Click(object sender, EventArgs e)
        {
            if (Session["userId"] != null)
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");       
            }
        }

        protected void lbRegisterOrProfile_Click(object sender, EventArgs e)
        {
            if (Session["userId"] != null) 
            {
                lbRegisterOrProfile.ToolTip = "User Profile";
                Response.Redirect("Profile.aspx");
            }
            else
            {
                lbRegisterOrProfile.ToolTip = "User Registration";
                Response.Redirect("Registration.aspx");
            }
        }
    }
}