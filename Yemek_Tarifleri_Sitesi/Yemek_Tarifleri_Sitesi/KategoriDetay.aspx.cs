using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string Katagoriid = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        Katagoriid = Request.QueryString["Kategoriid"];

        SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where kategoriid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", Katagoriid);

        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();


    }
}