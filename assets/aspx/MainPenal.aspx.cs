using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

namespace PACS.assets.aspx
{
    public partial class MainPenal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserName"] == null)
            {
                Response.Redirect("../../Index.aspx");
            }
            else
            {
                Label1.Text = "Dear,  " + Session["Name"].ToString();
            }
        }
    }
}