using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using AjaxControlToolkit;



namespace PACS.assets.aspx
{
    public partial class AddMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("../../Index.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile == true)
            {
                generatesno();
                String contenttype = FileUpload1.PostedFile.ContentType;

                if (contenttype == "image/jpeg")
                {
                    String imagename = Label1.Text + ".jpg";
                    FileUpload1.SaveAs(Server.MapPath("../Photos/") + imagename);
                    string imagelink = imagename;
                    String query = "insert into MembersDetail (Drcs,Arcs,Ceo,Dccb,PacsCode,Achade,MembershipNo,MemberName,Relation,FatherOrSpouse,Dob,Gender,Religion,Caste,Occupation,EduQual,Aadhar,VoterId,Mobile,FamilyMember,Aincome,Remarks,MembershipType,MembershipDate,Category,AddressType,District,Block,Gp,RevenueVillage,Village,PinCode,Dependant,DependantDOB,DependantGender,DependantRelation,DepenantOcu,DccBank,DccbBranch,DccbAc,Photo,EntryDate,EntryTime,EntryUserId,EntryIPAdress,UpdateDate,UpdateTime,UpdateUserId,UpdateIPAdress) values('" + Session["DrcsDivision"].ToString() + "','" + Session["ArcsCircle"].ToString() + "','" + Session["Block"].ToString() + "','" + Session["Block"].ToString() + "','" + Session["PacsCode"].ToString() + "','" + (204) + "','" + Label1.Text + "', '" + TextBox1.Text + "','" + DropDownList1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "','" + DropDownList4.Text + "','" + DropDownList5.Text + "','" + DropDownList6.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + DropDownList7.Text + "','" + TextBox10.Text + "','" + DropDownList8.Text + "','" + DropDownList9.Text + "','" + DropDownList10.SelectedItem.Text + "','" + DropDownList11.SelectedItem.Text + "','" + DropDownList12.SelectedItem.Text + "','" + DropDownList13.SelectedItem.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + DropDownList14.Text + "','" + DropDownList15.Text + "','" + DropDownList16.Text + "','" + DropDownList17.SelectedItem.Text + "','" + DropDownList18.SelectedItem.Text + "','" + TextBox15.Text + "','" + imagelink + "','" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.ToShortTimeString() + "','" + Session["UserName"].ToString() + "','" + Session["ClientIPAddress"].ToString() + "','" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.ToShortTimeString() + "','" + Session["UserName"].ToString() + "','" + Session["ClientIPAddress"].ToString() + "')";
                    String mycon3 = "Data Source=DESKTOP-5P2JRJP\\BIMAL; Initial Catalog=IRA; Integrated Security=true";
                    SqlConnection con = new SqlConnection(mycon3);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = query;
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                    TextBox10.Text = "";
                    TextBox11.Text = "";
                    TextBox12.Text = "";
                    TextBox13.Text = "";
                    TextBox14.Text = "";
                    TextBox15.Text = "";
                    Label1.Text = "";
                     ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                    "swal('Congrulation!', 'You are registered Successfully','success').then((value) => { window.location ='AddMember.aspx'; });", true);
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                    "swal('Try Again!', 'Kindly Upload Image in JPG Format', 'error')", true);
                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Try Again!', 'You have not selected any file - Browse and Select File First', 'error')", true);
            }            
        }
        private void generatesno()
        {
            String mycon = "Data Source=DESKTOP-5P2JRJP\\BIMAL; Initial Catalog=IRA; Integrated Security=true";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from MembersDetail where PacsCode='" + Session["PacsCode"].ToString() + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            scon.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                Label1.Text = Session["PacsCode"].ToString() + 10001;
            }
            else
            {
                String mycon1 = "Data Source=DESKTOP-5P2JRJP\\BIMAL; Initial Catalog=IRA; Integrated Security=true";
                SqlConnection scon1 = new SqlConnection(mycon1);
                String myquery1 = "select MembershipNo from MembersDetail";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = scon1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                int maxsno = 0;
                var part1 = Session["PacsCode"].ToString();
                var part2 = "10001";
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    var MembershipNo = dr["MembershipNo"].ToString();
                    part1 = MembershipNo.Substring(0, 7);
                    part2 = MembershipNo.Substring(7, (MembershipNo.Length) - 7);
                    if (maxsno < Convert.ToInt16(part2))
                    {
                        maxsno = Convert.ToInt16(part2);
                    }
                }
                maxsno = maxsno + 1;
                var newserial = part1 + maxsno.ToString("0");
                Label1.Text = newserial.ToString();
                scon1.Close();
            }
        }
    }
}