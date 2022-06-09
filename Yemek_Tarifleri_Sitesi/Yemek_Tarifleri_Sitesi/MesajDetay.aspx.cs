using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MesajDetay : System.Web.UI.Page
{


    sqlsinif bgl = new sqlsinif();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Mesajid"];
        if (Page.IsPostBack == false)
        {



            SqlCommand komut = new SqlCommand("Select *from Tbl_Mesajlar where Mesajid=@p1", bgl.baglanti());

            komut.Parameters.AddWithValue("@p1", id);

            SqlDataReader dr = komut.ExecuteReader();

            while (dr.Read())

            {
                txt_gon.Text = dr[1].ToString();
                txt_bas.Text = dr[2].ToString();
               txt_mail.Text = dr[3].ToString();
                txt_icerik.Text = dr[4].ToString();

            }
            bgl.baglanti().Close();
        }
    }
}