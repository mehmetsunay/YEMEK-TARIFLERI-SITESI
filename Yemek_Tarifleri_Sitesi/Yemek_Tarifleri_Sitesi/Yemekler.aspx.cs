using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Yemekler : System.Web.UI.Page
{

    string islem ="";
    string id ="";


    sqlsinif bgl = new sqlsinif();
   
    protected void Page_Load(object sender, EventArgs e)
    {

        

        Panel2.Visible = false;
        Panel4.Visible = false;
        if(Page.IsPostBack==false)
        {
            id = Request.QueryString["Yemekid"];

            islem = Request.QueryString["islem"];



            //katagori listesi

            SqlCommand komut2 = new SqlCommand("Select *from Tbl_Katagoriler", bgl.baglanti());

            SqlDataReader dr2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KatagoriAd";
            DropDownList1.DataValueField = "Katagoriid";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();


        }


        SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();


        if(islem=="sil")
        { 
        SqlCommand komut3 = new SqlCommand("Delete from Tbl_Yemekler where Yemekid=@p1",bgl.baglanti());


        komut3.Parameters.AddWithValue("@p1", id);
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();

        }



    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

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
        SqlCommand komut = new SqlCommand("insert into Tbl_Yemekler(YemekAd,YemekMalzeme,YemekTarif,Kategoriid) values(@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", txt_ad.Text);
        komut.Parameters.AddWithValue("@p2", TextBox1.Text);
        komut.Parameters.AddWithValue("@p3", TextBox2.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);


        komut.ExecuteNonQuery();

        bgl.baglanti().Close();

        //kategori sayısını arttırma

        SqlCommand komut2 = new SqlCommand("update Tbl_Katagoriler set KatagoriAdet=KatagoriAdet+1 where Katagoriid=@p5", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p5", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();



    }

}