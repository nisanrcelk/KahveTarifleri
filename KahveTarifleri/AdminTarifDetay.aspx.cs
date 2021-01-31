using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KahveTarifleri
{
    public partial class TarifOnerDetay : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Tarifid"];
            if (Page.IsPostBack == false) { 
            SqlCommand komut = new SqlCommand("Select *from Tbl_Tarifler where Tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
                TextBox4.Text = dr[6].ToString();
                TextBox5.Text = dr[5].ToString();
            }
            bgl.baglanti().Close();



                SqlCommand komut3 = new SqlCommand("Select *from Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr3 = komut3.ExecuteReader();
                DropDownList1.DataTextField = "Kategoriad";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = dr3;
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        { //durum güncelleme
            SqlCommand komut = new SqlCommand("Update Tbl_Tarifler set TarifDurum=1 where Tarifid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            //onayla
            SqlCommand komut2 = new SqlCommand("insert into Tbl_kahveler (Kahvead,KahveMalzeme,Kahvetarif,Kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", TextBox1.Text);
                komut2.Parameters.AddWithValue("@p2", TextBox2.Text);
                komut2.Parameters.AddWithValue("@p3", TextBox3.Text);
                komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}