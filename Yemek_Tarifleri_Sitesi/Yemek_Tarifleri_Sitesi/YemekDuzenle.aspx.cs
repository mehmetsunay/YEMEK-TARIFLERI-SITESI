using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YemekDuzenle : System.Web.UI.Page
{
  
    sqlsinif bgl = new sqlsinif();
    string id;
   

    protected void Page_Load(object sender, EventArgs e)
    {

        id = Request.QueryString["Yemekid"];
     
        if (Page.IsPostBack == false)
        {



            SqlCommand komut = new SqlCommand("Select *from Tbl_Yemekler where Yemekid=@p2", bgl.baglanti());
          //  SqlCommand komut2 = new SqlCommand("Select *from Tbl_Yemekler where Yemekid=@p3", bgl.baglanti());

            komut.Parameters.AddWithValue("@p2",id);

            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())

            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();

            }
            bgl.baglanti().Close();
        }
        if (Page.IsPostBack == false)
        {

            SqlCommand komut2 = new SqlCommand("Select *from Tbl_Katagoriler", bgl.baglanti());

            SqlDataReader dr2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KatagoriAd";
            DropDownList1.DataValueField = "Katagoriid";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();


        }






    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,Kategoriid=@p4 where Yemekid=@p5", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p5", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}