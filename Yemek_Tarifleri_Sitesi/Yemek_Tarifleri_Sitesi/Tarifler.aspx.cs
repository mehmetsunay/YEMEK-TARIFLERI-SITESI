using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Tarifler : System.Web.UI.Page
{

    sqlsinif bgl = new sqlsinif();

    protected void Page_Load(object sender, EventArgs e)
    {

        Panel2.Visible = false;

        SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where TarifDurum=1", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();



    }

   

    protected void Button1_Click1(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}