using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class kullanici : System.Web.UI.MasterPage
{

    sqlsinif con = new sqlsinif();

    protected void Page_Load(object sender, EventArgs e)
    {

        SqlCommand komut = new SqlCommand("Select *  From Tbl_Katagoriler", con.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList1.DataSource = oku;
        DataList1.DataBind();
         
    }

    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Request.Browser.IsMobileDevice)
            MasterPageFile = "~/Mobile.Master";
    }
}
