using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifOnerDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();

    string id = "";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Tarifid"];
        if(Page.IsPostBack==false)
        { 
        SqlCommand komut = new SqlCommand ("Select * from Tbl_Tarifler where Tarifid=@p1",bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", id);
        SqlDataReader dr = komut.ExecuteReader();
        while(dr.Read())

        {
            TextBox6.Text = dr[1].ToString();
            TextBox7.Text = dr[2].ToString();
            TextBox3.Text = dr[3].ToString();
            TextBox4.Text = dr[5].ToString();
            TextBox5.Text = dr[6].ToString();

        }
        bgl.baglanti().Close();
        }


        SqlCommand komut2 = new SqlCommand("Select *from Tbl_Katagoriler", bgl.baglanti());

        SqlDataReader dr2 = komut2.ExecuteReader();

        DropDownList1.DataTextField = "KatagoriAd";
        DropDownList1.DataValueField = "Katagoriid";

        DropDownList1.DataSource = dr2;
        DropDownList1.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //durum güncelleme

        SqlCommand komut3 = new SqlCommand("update Tbl_Tarifler set TarifDurum=1 where Tarifid=@p1", bgl.baglanti());
        komut3.Parameters.AddWithValue("@p1", id);
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();

        //Yemeği anasayfaya ekleme


        SqlCommand komut4 = new SqlCommand("insert into Tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut4.Parameters.AddWithValue("@p1", TextBox6.Text);
        komut4.Parameters.AddWithValue("@p2", TextBox7 .Text);
        komut4.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut4.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);


        komut4.ExecuteNonQuery();

        bgl.baglanti().Close();




    }

    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox6_TextChanged1(object sender, EventArgs e)
    {

    }
}