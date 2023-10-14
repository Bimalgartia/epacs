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
    /// Summary description for Village
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(true)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class Village : System.Web.Services.WebService
    {   public Village() { }

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-5P2JRJP\\BIMAL; Initial Catalog=IRA; Integrated Security=True");
        //Web method for bind District
        [WebMethod]
        public CascadingDropDownNameValue[] BindDistrict(string knownCategoryValues, string category)
        {
            DataSet ds = new DataSet();
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from DistrictList", conn);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            cmd.ExecuteNonQuery();
            adp.Fill(ds);
            conn.Close();
            List<CascadingDropDownNameValue> DistrictList = new List<CascadingDropDownNameValue>();
            foreach (DataRow DR in ds.Tables[0].Rows)
            {
                string DistrictId = DR["DistrictId"].ToString();
                string DistrictName = DR["DistrictName"].ToString();
                DistrictList.Add(new CascadingDropDownNameValue(DistrictName, DistrictId));
            }
            return DistrictList.ToArray();
        }
        //Web method for bind Block
        [WebMethod]
        public CascadingDropDownNameValue[] BindBlock(string knownCategoryValues, string category)
        {
            DataSet ds = new DataSet();
            int DistrictID;
            StringDictionary DistrictList = AjaxControlToolkit.CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues);
            DistrictID = Convert.ToInt32(DistrictList["District"]);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from BlockList where DistrictId=@DistrictId", conn);
            cmd.Parameters.AddWithValue("@DistrictId", DistrictID);
            cmd.ExecuteNonQuery();
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(ds);
            conn.Close();
            List<CascadingDropDownNameValue> BlockList = new List<CascadingDropDownNameValue>();
            foreach (DataRow DR in ds.Tables[0].Rows)
            {
                string BlockId = DR["BlockId"].ToString();
                string BlockName = DR["BlockName"].ToString();
                BlockList.Add(new CascadingDropDownNameValue(BlockName, BlockId));
            }
            return BlockList.ToArray();
        }
        //Web method for bind Gp
        [WebMethod]
        public CascadingDropDownNameValue[] BindGp(String knownCategoryValues, string category)
        {
            DataSet ds = new DataSet();
            int BlockId;
            StringDictionary BlockList = AjaxControlToolkit.CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues);
            BlockId = Convert.ToInt32(BlockList["Block"]);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from GpNacList where BlockId=@BlockId", conn);
            cmd.Parameters.AddWithValue("@BlockId", BlockId);
            cmd.ExecuteNonQuery();
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(ds);
            conn.Close();
            List<CascadingDropDownNameValue> GpNacList = new List<CascadingDropDownNameValue>();
            foreach (DataRow DR in ds.Tables[0].Rows)
            {
                string GpId = DR["GpId"].ToString();
                string GpNacName = DR["GpNacName"].ToString();
                GpNacList.Add(new CascadingDropDownNameValue(GpNacName, GpId));
            }
            return GpNacList.ToArray();
        }
        //Web method for bind Revillage
        [WebMethod]
        public CascadingDropDownNameValue[] BindRevillage(String knownCategoryValues, string category)
        {
            DataSet ds = new DataSet();
            int GpId;
            StringDictionary GpNacList = AjaxControlToolkit.CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues);
            GpId = Convert.ToInt32(GpNacList["Gp"]);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from RevenueVillageList where GpId=@GpId", conn);
            cmd.Parameters.AddWithValue("@GpId", GpId);
            cmd.ExecuteNonQuery();
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(ds);
            conn.Close();
            List<CascadingDropDownNameValue> RevenueVillageList = new List<CascadingDropDownNameValue>();
            foreach (DataRow DR in ds.Tables[0].Rows)
            {
                string VillageId = DR["VillageId"].ToString();
                string RevenueVillageName = DR["RevenueVillageName"].ToString();
                RevenueVillageList.Add(new CascadingDropDownNameValue(RevenueVillageName, VillageId));
            }
            return RevenueVillageList.ToArray();
        }
    }
}

