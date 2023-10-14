using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using AjaxControlToolkit;
using System.Configuration;
using System.IO;
namespace PACS.assets.aspx
{
    public partial class LandStatus1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            if (Session["UserName"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Label2.Text = Session["PacsCode"].ToString();
            }
        }
        SqlConnection abcd = new SqlConnection("Data Source=DESKTOP-5P2JRJP\\BIMAL; Initial Catalog=IRA; Integrated Security=true");
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow gr = GridView1.SelectedRow;
            Panel1.Visible = false;
            Panel2.Visible = true;
            TextBox1.Text = gr.Cells[0].Text;
            TextBox7.ReadOnly = true;
            TextBox7.Text = gr.Cells[0].Text;
            TextBox8.ReadOnly = true;
            TextBox8.Text = gr.Cells[1].Text;
            TextBox9.ReadOnly = true;
            TextBox9.Text = gr.Cells[3].Text;
            TextBox10.ReadOnly = true;
            TextBox10.Text = gr.Cells[4].Text;
            TextBox11.ReadOnly = true;
        }

        
        Decimal balancearea = 0;
        Decimal totalarea = 0;        
        protected void Button2_Click(object sender, EventArgs e)
        {            
            String myconn = "Data Source=DESKTOP-5P2JRJP\\BIMAL;Initial Catalog=IRA;Integrated Security=True";
            SqlConnection scon = new SqlConnection(myconn);
            String myquery = "SELECT * FROM CropLandLedger WHERE Mouza ='" + DropDownList4.SelectedItem.Text + "' AND KhataNo ='" + TextBox2.Text + "' AND PlotNo ='" + TextBox3.Text + "'";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery;
            cmd1.Connection = scon;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                SqlConnection connection = new SqlConnection(myconn);
                string query = "select sum(CropLand) from CropLandLedger where Mouza ='" + DropDownList4.SelectedItem.Text + "' AND KhataNo ='" + TextBox2.Text + "' AND PlotNo ='" + TextBox3.Text + "'";
                SqlCommand cmd2 = new SqlCommand(query, connection);
                connection.Open();
                object total = cmd2.ExecuteScalar();
                connection.Close();
                TextBox2.ReadOnly = true;
                TextBox3.ReadOnly = true;
                totalarea = totalarea + Convert.ToDecimal(ds1.Tables[0].Rows[0]["TotalLand"].ToString());
                TextBox4.Text = totalarea.ToString();
                TextBox4.ReadOnly = true;
                TextBox5.Text = total.ToString();
                TextBox5.ReadOnly = true;
                Button2.Visible = false;
                Button3.Visible = true;
                balancearea = (Convert.ToDecimal(TextBox4.Text))- (Convert.ToDecimal(TextBox5.Text));
                TextBox6.Text= balancearea.ToString();
                TextBox12.Text = balancearea.ToString();
            }
            else
            {
                TextBox2.ReadOnly = true;
                TextBox3.ReadOnly = true;
                TextBox4.Text = "0.00";
                TextBox5.Text = "0.00";
                TextBox5.ReadOnly = true;
                TextBox6.Text = "0.00";
                Button2.Visible = false;
                Button3.Visible = true;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if ((Convert.ToDecimal(TextBox6.Text)) <= 0) 
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
              "swal('Try Again!', 'You have not allow to enter 0.00 in Balance area', 'error')", true);
            }
            else { 
            if ((Convert.ToDecimal(TextBox6.Text)) <= ((Convert.ToDecimal(TextBox4.Text))- (Convert.ToDecimal(TextBox5.Text))))
            {
                String query = "insert into CropLandLedger(Drcs,Arcs,Ceo,Dccb,PacsCode,MembershipNo,Crop,IrrSourse,District,Tahasil,RI,Mouza,KhataNo,PlotNo,TotalLand,CropLand,EntryDate,EntryTime,EntryUserId,EntryIPAdress) Values ('" + Session["DrcsDivision"].ToString() + "','" + Session["ArcsCircle"].ToString() + "','" + Session["Block"].ToString() + "','" + Session["Block"].ToString() + "','" + Session["PacsCode"].ToString() + "','" + TextBox1.Text + "','" + DropDownList6.Text + "','" + DropDownList5.Text + "','" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "','" + DropDownList4.SelectedItem.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.ToShortTimeString() + "','" + Session["UserName"].ToString() + "','" + Session["ClientIPAddress"].ToString() + "')";
                String mycon = "Data Source=DESKTOP-5P2JRJP\\BIMAL; Initial Catalog=IRA; Integrated Security=true";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                TextBox2.ReadOnly = false;
                TextBox3.ReadOnly = false;
                Button2.Visible = true;
                Button3.Visible = false;
                GridView2.DataBind();
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Congrulation!', 'You are Successfully registered more one plot','success')", true);
            }
            else {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
              "swal('Try Again!', 'You have not allow to enter more then Balance area', 'error')", true);
            }
        }
        }
        Decimal tot = 0;
        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                tot = tot + Convert.ToDecimal(e.Row.Cells[9].Text);
                TextBox11.Text = tot.ToString();
                TextBox11.ReadOnly = true;
            }
        }
    }   
}