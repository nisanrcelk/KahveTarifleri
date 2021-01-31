using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace KahveTarifleri
{
    public partial class kahveDetay : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string Kahveid = "";
        protected void Page_Load(object sender, EventArgs e)
            
        {
            SqlCommand komut = new SqlCommand("Select *From Tbl_Kategoriler ", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList5.DataSource = oku;
            DataList5.DataBind();

            Kahveid = Request.QueryString["Kahveid"];
            SqlCommand komut2 = new SqlCommand("Select Kahvead From Tbl_kahveler where Kahveid = @p1 ", bgl.baglanti());

            komut2.Parameters.AddWithValue("@p1", Kahveid);
            SqlDataReader dr = komut2.ExecuteReader();
            while (dr.Read())

            {
               baslik.Text= dr[0].ToString();

            }
            SqlCommand komut3 = new SqlCommand("Select KahveMalzeme From Tbl_kahveler where Kahveid=@p1 ", bgl.baglanti());

            komut3.Parameters.AddWithValue("@p1", Kahveid);
            SqlDataReader dr1 = komut3.ExecuteReader();
            while (dr1.Read())
                

            {
                malze.Text = dr1[0].ToString();

            }

            bgl.baglanti().Close();
            SqlCommand komut6 = new SqlCommand("Select KahveTarif From Tbl_kahveler where Kahveid=@p1 ", bgl.baglanti());

            komut6.Parameters.AddWithValue("@p1", Kahveid);
            SqlDataReader dr6 = komut6.ExecuteReader();
            while (dr6.Read())


            {
                yapilis.Text = dr6[0].ToString();

            }

            bgl.baglanti().Close();

            SqlCommand komut5 = new SqlCommand("Select KahveResim From Tbl_kahveler where Kahveid=@p1 ", bgl.baglanti());

            komut5.Parameters.AddWithValue("@p1", Kahveid);
            SqlDataReader dr5 = komut5.ExecuteReader();
            while (dr5.Read())


            {
                Image1.ImageUrl = dr5[0].ToString();

            }
            bgl.baglanti().Close();




            SqlCommand komut4 = new SqlCommand("Select * From Tbl_Yorumlar where Kahveid=@p2 ", bgl.baglanti());
            komut4.Parameters.AddWithValue("@p2", Kahveid);
            SqlDataReader dr2 = komut4.ExecuteReader();
            DataList6.DataSource = dr2;
            DataList6.DataBind();



            

        }
        protected void gonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,Yorumİcerik,Kahveid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", txtad.Text);
            komut.Parameters.AddWithValue("@p2", TextBox1.Text);
            komut.Parameters.AddWithValue("@p3", TextBox2.Text);
            komut.Parameters.AddWithValue("@p4",Kahveid);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

    }
}