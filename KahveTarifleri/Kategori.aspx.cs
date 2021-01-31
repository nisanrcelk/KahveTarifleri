using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KahveTarifleri
{
    public partial class Kategori : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string Kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Kategoriid = Request.QueryString["Kategoriid"];
            SqlCommand komut = new SqlCommand("Select *From Tbl_kahveler where Kategoriid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Kategoriid);
            SqlDataReader dr = komut.ExecuteReader();
            DataList3.DataSource = dr;
            DataList3.DataBind();


            //SqlCommand komut = new SqlCommand("Select *From Tbl_kahveler ", bgl.baglanti());
            //SqlDataReader oku = komut.ExecuteReader();
            //DataList3.DataSource = oku;
            //DataList3.DataBind();
        }
    }
}