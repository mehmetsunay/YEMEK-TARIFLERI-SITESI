using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


public class sqlsinif
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection("Server=hostsql1.isimtescil.net;Database=psofR4cb2_dboyem;User ID=psofR4cb2_mehmet;Password=Antalya25;Integrated Security=false");

        baglan.Open();
        return baglan;
    }
}