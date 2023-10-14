using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace PACS.assets.aspx
{
    public partial class Password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("../../Index.aspx");
            }
            else
            {
                Label1.Text = Session["UserName"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String mycon = "Data Source=DESKTOP-5P2JRJP\\BIMAL;Initial Catalog=IRA;Integrated Security=True";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from LoginRoleNew";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String Password;
            Password = ds.Tables[0].Rows[0]["password"].ToString();
            scon.Close();
            if (Password == TextBox1.Text)
            {

                if (TextBox2.Text == TextBox3.Text && TextBox2.Text !="" && TextBox2.Text.Length > 5)
                {
                    String updatepassword = "Update LoginRoleNew set password='" + TextBox2.Text + "' where username='" + Label1.Text + "'";
                    String mycon1 = "Data Source=DESKTOP-5P2JRJP\\BIMAL;Initial Catalog=IRA;Integrated Security=True";
                    SqlConnection s = new SqlConnection(mycon1);
                    s.Open();
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = updatepassword;
                    cmd1.Connection = s;
                    cmd1.ExecuteNonQuery();
                    Session.Abandon();
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                    "swal('Congrulation!', 'You are Reset Password Successfully','success').then((value) => { window.location ='../../Index.aspx'; });", true);
                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                    "swal('Password Not Accepted ! ', 'New Password and Re-enter Password Not Matched / Blank ', 'error')", true);
                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Invalid Password ! ', 'Cannot Change Password with User Authentication', 'error')", true);
            }
        }
    }
}