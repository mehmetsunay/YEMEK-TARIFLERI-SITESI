using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kategoriler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    string islem = "";

    protected void Page_Load(object sender, EventArgs e)



    {
        if(Page.IsPostBack==false)
            
        {
            id = Request.QueryString["Katagoriid"];
            islem = Request.QueryString["islem"];


        }

        //sil
        if(islem=="sil")
        { 
        SqlCommand komutsil = new SqlCommand("Delete from Tbl_Katagoriler where Katagoriid=@p1", bgl.baglanti());
        komutsil.Parameters.AddWithValue("@p1", id);

            komutsil.ExecuteNonQuery();

            bgl.baglanti().Close();

        }
        SqlCommand komut = new SqlCommand("Select *from Tbl_Katagoriler",bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        Panel2.Visible = false;
        Panel4.Visible = false;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void Btn_ekle_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Katagoriler (KatagoriAd) values (@p1)",bgl.baglanti());

        komut.Parameters.AddWithValue("@p1", txt_ad.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}