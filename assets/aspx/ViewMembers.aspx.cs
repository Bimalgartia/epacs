using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace PACS.assets.aspx
{
    public partial class ViewMembers : System.Web.UI.Page
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
                Label2.Text = Session["PacsCode"].ToString();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string MembershipNo = GridView1.SelectedRow.Cells[0].Text;
            Response.Redirect("MembershipStatus.aspx?MembershipNo="  + MembershipNo);
        }
    }
}