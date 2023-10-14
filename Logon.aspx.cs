using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.NetworkInformation;
using System.Net.Sockets;

namespace PACS
{
    public partial class Logon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String mycon = "Data Source=DESKTOP-5P2JRJP\\BIMAL;Initial Catalog=IRA;Integrated Security=True";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from LoginRoleNew where username='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String UserName;
            String Password;
            String Name;
            String DRCS;
            String ARCS;
            String Block;
            String Code;
            String OfficeName;
            string strHostName = System.Net.Dns.GetHostName();
            string ClientIPAddress = System.Net.Dns.GetHostAddresses(strHostName).GetValue(0).ToString();
            if (ds.Tables[0].Rows.Count > 0)
            {
                ClientIPAddress = System.Net.Dns.GetHostAddresses(strHostName).GetValue(0).ToString();
                UserName = ds.Tables[0].Rows[0]["username"].ToString();
                Password = ds.Tables[0].Rows[0]["password"].ToString();
                Name = ds.Tables[0].Rows[0]["Name"].ToString();
                DRCS = ds.Tables[0].Rows[0]["DrcsDivision"].ToString();
                ARCS = ds.Tables[0].Rows[0]["ArcsCircle"].ToString();
                Block = ds.Tables[0].Rows[0]["Block"].ToString();
                Code = ds.Tables[0].Rows[0]["PacsCode"].ToString();
                OfficeName = ds.Tables[0].Rows[0]["PacsName"].ToString();
                scon.Close();
                if (UserName == TextBox1.Text && Password == TextBox2.Text)
                {
                    Session["UserName"] = UserName;
                    Session["Name"] = Name;
                    Session["DrcsDivision"] = DRCS;
                    Session["ArcsCircle"] = ARCS;
                    Session["Block"] = Block;
                    Session["PacsCode"] = Code;
                    Session["PacsName"] = OfficeName;
                    Session["clientIPAddress"] = ClientIPAddress;
                    if (ds.Tables[0].Rows[0]["Role"].ToString() == "Admin")
                        Response.Redirect("assets/aspx/MainPenal.aspx");
                    else if (ds.Tables[0].Rows[0]["Role"].ToString() == "User")
                        Response.Redirect("assets/aspx/MainPenal.aspx");
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                    "swal('Invalid Username or Password !', 'Relogin with Correct Username and Password', 'error')", true);
                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Invalid Username or Password !', 'Relogin with Correct Username and Password', 'error')", true);
            }
        }
    }
}