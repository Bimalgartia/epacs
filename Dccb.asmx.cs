using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Collections.Specialized;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using AjaxControlToolkit;


namespace PACS
{
    /// <summary>
    /// Summary description for Dccb
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class Dccb : System.Web.Services.WebService
    {   public Dccb() { }

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-5P2JRJP\\BIMAL; Initial Catalog=IRA; Integrated Security=True");
        //Web method for bind Bank
        [WebMethod]
        public CascadingDropDownNameValue[] BindBank(string knownCategoryValues, string category)
        {
            DataSet ds = new DataSet();
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from DccBankList", conn);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            cmd.ExecuteNonQuery();
            adp.Fill(ds);
            conn.Close();
            List<CascadingDropDownNameValue> DccBankList = new List<CascadingDropDownNameValue>();
            foreach (DataRow DR in ds.Tables[0].Rows)
            {
                string BankId = DR["BankId"].ToString();
                string CCBName = DR["CCBName"].ToString();
                DccBankList.Add(new CascadingDropDownNameValue(CCBName, BankId));
            }
            return DccBankList.ToArray();
        }
        //Web method for bind Branch
        [WebMethod]
        public CascadingDropDownNameValue[] BindDccbBranch(string knownCategoryValues, string category)
        {
            DataSet ds = new DataSet();
            int BankId;
            StringDictionary DccBankList = AjaxControlToolkit.CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues);
            BankId = Convert.ToInt32(DccBankList["Bank"]);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from DccBankBranchList where BankId=@BankId", conn);
            cmd.Parameters.AddWithValue("@BankId", BankId);
            cmd.ExecuteNonQuery();
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(ds);
            conn.Close();
            List<CascadingDropDownNameValue> DccBankBranchList = new List<CascadingDropDownNameValue>();
            foreach (DataRow DR in ds.Tables[0].Rows)
            {
                string BranchID = DR["BranchId"].ToString();
                string BranchName = DR["BranchName"].ToString();
                DccBankBranchList.Add(new CascadingDropDownNameValue(BranchName, BranchID));
            }
            return DccBankBranchList.ToArray();
        }
        
    }
}
