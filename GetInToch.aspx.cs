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
using System.Net;
using System.Net.NetworkInformation;
using System.Net.Sockets;
using System.Runtime.InteropServices;

namespace PACS
{
    public partial class GetInToch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private Boolean checkcontact()
        {
            Boolean contactavailable = false;
            String mycon = "Data Source=DESKTOP-5P2JRJP\\BIMAL; Initial Catalog=IRA; Integrated Security=True";
            String myquery = "Select * from FarmerContact where Contact='" + TextBox1.Text + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            string Contact;
            String Role;
            string strHostName = System.Net.Dns.GetHostName();
            string clientIPAddress = System.Net.Dns.GetHostAddresses(strHostName).GetValue(0).ToString();
            if (ds.Tables[0].Rows.Count > 0)
            {
                Contact = ds.Tables[0].Rows[0]["Contact"].ToString();
                Role = ds.Tables[0].Rows[0]["Role"].ToString();
                if (ds.Tables[0].Rows[0]["Role"].ToString() == "user")
                    Response.Redirect("Logon.aspx");
                contactavailable = true;
            }
            con.Close();
            clientIPAddress = System.Net.Dns.GetHostAddresses(strHostName).GetValue(0).ToString();
            Session["clientIPAddress"] = clientIPAddress;
            return contactavailable;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkcontact() == true)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Already Registered!', 'Please Try with your another Mobile Number', 'error')", true);
            }
            else
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String query = "insert into FarmerContact(Contact,Name,Village,Role,Date,Time,IPaddress) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + ("Farmer") + "','" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.ToShortTimeString() + "','" + Session["clientIPAddress"].ToString() + "')";
            String mycon = "Data Source=DESKTOP-5P2JRJP\\BIMAL; Initial Catalog=IRA; Integrated Security=True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = query;
            cmd1.Connection = con;
            cmd1.Connection = con;
            cmd1.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
            "swal('Congrulation!', 'You are registered Successfully','success').then((value) => { window.location ='GetInToch.aspx'; });", true);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}