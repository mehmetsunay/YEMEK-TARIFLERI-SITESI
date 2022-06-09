using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;




public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
    protected void btn_grsyp_Click(object sender, EventArgs e)
    {
         if ((TextBox1.Text == "mhmt") && (TextBox2.Text == "1234"))
        {
            Response.Redirect("Admin2.aspx");
        }
    }
}