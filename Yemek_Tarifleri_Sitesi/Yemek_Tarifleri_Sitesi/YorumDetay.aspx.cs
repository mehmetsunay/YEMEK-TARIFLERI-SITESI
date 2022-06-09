using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";


    protected void Page_Load(object sender, EventArgs e)
    {



        id = Request.QueryString["Yorumid"];

        if (Page.IsPostBack == false)
        {

            SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd from Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.Yemekid=Tbl_Yemekler.Yemekid  where Yorumid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {

                Txt_Ad.Text = dr[0].ToString();
                Txt_Mail.Text = dr[1].ToString();
                Txt_icerik.Text = dr[2].ToString();
                Txt_Yemek.Text = dr[3].ToString();

            }
            bgl.baglanti().Close();
        }
    }

    protected void btn_Onay_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Update  Tbl_Yorumlar set Yorumicerik=@p1,YorumOnay=@p2 where Yorumid=@p3", bgl.baglanti());

        komut.Parameters.AddWithValue("@p1", Txt_icerik.Text);
        komut.Parameters.AddWithValue("@p2", true);
        komut.Parameters.AddWithValue("@p3", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}