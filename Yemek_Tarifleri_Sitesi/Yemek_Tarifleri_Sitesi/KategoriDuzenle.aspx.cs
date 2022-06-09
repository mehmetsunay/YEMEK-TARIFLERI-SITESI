using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class KategoriAdminDetay : System.Web.UI.Page
{

    sqlsinif bgl = new sqlsinif();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {

        id = Request.QueryString["Katagoriid"];
       if (Page.IsPostBack == false)
        {



            SqlCommand komut = new SqlCommand("Select *from Tbl_Katagoriler where Katagoriid=@p1", bgl.baglanti());

            komut.Parameters.AddWithValue("@p1", id);

            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())

            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();

            }
            bgl.baglanti().Close();
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Update Tbl_Katagoriler set KatagoriAd=@p1,KatagoriAdet=@p2 where Katagoriid=@p3", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}