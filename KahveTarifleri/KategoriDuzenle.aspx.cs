using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace KahveTarifleri
{
    public partial class KategoriDuzenle : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string id;
       

        protected void Page_Load(object sender, EventArgs e)
        { id = Request.QueryString["Kategoriid"];
            if (Page.IsPostBack == false) { 
            SqlCommand komut = new SqlCommand("Select *From Tbl_Kategoriler where Kategoriid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
            }
            bgl.baglanti().Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update *From Tbl_Kategoriler set Kategoriad=@p1 where Kategoriid=@p2", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}