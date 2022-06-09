using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class GununYemegi : System.Web.UI.Page
{
    sqlsinif con = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Select *From Tbl_GununYemegi ", con.baglanti());
        SqlDataReader oku = komut.ExecuteReader();
        DataList2.DataSource = oku;
        DataList2.DataBind();
    }

    protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DataList2_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}