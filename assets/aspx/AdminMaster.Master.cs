using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PACS.assets.aspx
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("../Index.aspx");
            }
            else
            {
                Label1.Text = Session["PacsName"].ToString();
                Label2.Text = "OFFICE CODE : " + Session["PacsCode"].ToString();
                Label3.Text = "Welcome " + Session["Name"].ToString();
                Label4.Text = "DRCS DIVISION : " + Session["DrcsDivision"].ToString();
                Label5.Text = "ARCS CIRCLE : " + Session["ArcsCircle"].ToString();
                Label6.Text = "BLOCK : " + Session["Block"].ToString();

            }
        }
    }
}