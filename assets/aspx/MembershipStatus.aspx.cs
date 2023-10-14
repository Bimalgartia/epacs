using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


namespace PACS.assets.aspx
{
    public partial class MembershipStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String mycon = "Data Source=DESKTOP-5P2JRJP\\BIMAL; Initial Catalog=IRA; Integrated Security=true";
            String myquery = "Select * from MembersDetail where MembershipNo=" + Request.QueryString["MembershipNo"];
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label1.Text = Session["PacsName"].ToString();
                Label4.Text = ds.Tables[0].Rows[0]["MembershipNo"].ToString();
                Label6.Text = ds.Tables[0].Rows[0]["MemberName"].ToString();
                Label8.Text = ds.Tables[0].Rows[0]["Aadhar"].ToString();
                Label10.Text = ds.Tables[0].Rows[0]["VoterId"].ToString();
                Label12.Text = ds.Tables[0].Rows[0]["Mobile"].ToString();
                Label14.Text = ds.Tables[0].Rows[0]["Mobile"].ToString();
                Label16.Text = ds.Tables[0].Rows[0]["Dob"].ToString();
                Label22.Text = ds.Tables[0].Rows[0]["Gender"].ToString();
                Label18.Text = ds.Tables[0].Rows[0]["Religion"].ToString();
                Label20.Text = ds.Tables[0].Rows[0]["Caste"].ToString();
                Label24.Text = ds.Tables[0].Rows[0]["EduQual"].ToString();
                Label26.Text = ds.Tables[0].Rows[0]["Occupation"].ToString();
                Label28.Text = ds.Tables[0].Rows[0]["FatherOrSpouse"].ToString();
                Label30.Text = ds.Tables[0].Rows[0]["RevenueVillage"].ToString();
                Label32.Text = ds.Tables[0].Rows[0]["Gp"].ToString();
                Label34.Text = ds.Tables[0].Rows[0]["District"].ToString();
                Label36.Text = ds.Tables[0].Rows[0]["PinCode"].ToString();
                Label52.Text = ds.Tables[0].Rows[0]["DccBank"].ToString();
                Label54.Text = ds.Tables[0].Rows[0]["DccbBranch"].ToString();
                Label56.Text = ds.Tables[0].Rows[0]["DccbAc"].ToString();
                Label76.Text = ds.Tables[0].Rows[0]["Dependant"].ToString();
                Label80.Text = ds.Tables[0].Rows[0]["DependantGender"].ToString();
                Label78.Text = ds.Tables[0].Rows[0]["DependantDOB"].ToString();
                Label45.Text = ds.Tables[0].Rows[0]["DependantRelation"].ToString();
                Label82.Text = ds.Tables[0].Rows[0]["DepenantOcu"].ToString();
                String image = ds.Tables[0].Rows[0]["Photo"].ToString();
                Image1.ImageUrl = "../Photos/" + image;
                Label39.Text = DateTime.Now.ToShortDateString() + "     " + DateTime.Now.ToShortTimeString();
                Label41.Text = Session["Name"].ToString();
                Label43.Text = Session["PacsName"].ToString();
                Label37.Text = ds.Tables[0].Rows[0]["MembershipNo"].ToString();
            }
            con.Close();
        }        
    }
}