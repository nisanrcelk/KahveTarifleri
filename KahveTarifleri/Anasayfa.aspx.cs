using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace KahveTarifleri
{
    public partial class Anasayfa : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select *From Tbl_Kategoriler ", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            SqlCommand komutt = new SqlCommand("Select *From Tbl_kahveler WHERE Kahveid=1 ", bgl.baglanti());
            SqlDataReader okuu = komutt.ExecuteReader();
            DataList3.DataSource = okuu;
            DataList3.DataBind();

            SqlCommand komut2 = new SqlCommand("Select *From Tbl_kahveler WHERE Kahveid=6 ", bgl.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList4.DataSource = oku2;
            DataList4.DataBind();

            SqlCommand komut3 = new SqlCommand("Select *From Tbl_kahveler WHERE Kahveid=9 ", bgl.baglanti());
            SqlDataReader oku3 = komut3.ExecuteReader();
            DataList5.DataSource = oku3;
            DataList5.DataBind();

            SqlCommand komut4 = new SqlCommand("Select *From Tbl_kahveler WHERE Kahveid=11 ", bgl.baglanti());
            SqlDataReader oku4 = komut4.ExecuteReader();
            DataList6.DataSource = oku4;
            DataList6.DataBind();

            SqlCommand komut5 = new SqlCommand("Select *From Tbl_kahveler WHERE Kahveid=8 ", bgl.baglanti());
            SqlDataReader oku5 = komut5.ExecuteReader();
            DataList7.DataSource = oku5;
            DataList7.DataBind();

            SqlCommand komut6 = new SqlCommand("Select *From Tbl_kahveler WHERE Kahveid=10 ", bgl.baglanti());
            SqlDataReader oku6 = komut6.ExecuteReader();
            DataList8.DataSource = oku6;
            DataList8.DataBind();

            SqlCommand komut7 = new SqlCommand("Select *From Tbl_kahveler WHERE Kahveid=7 ", bgl.baglanti());
            SqlDataReader oku7 = komut7.ExecuteReader();
            DataList9.DataSource = oku7;
            DataList9.DataBind();

            SqlCommand komut8 = new SqlCommand("Select *From Tbl_kahveler WHERE Kahveid=2 ", bgl.baglanti());
            SqlDataReader oku8 = komut8.ExecuteReader();
            DataList10.DataSource = oku8;
            DataList10.DataBind();

            SqlCommand komut9 = new SqlCommand("Select *From Tbl_kahveler WHERE Kahveid=9 ", bgl.baglanti());
            SqlDataReader oku9 = komut9.ExecuteReader();
            DataList11.DataSource = oku9;
            DataList11.DataBind();

            SqlCommand komut10 = new SqlCommand("Select *From Tbl_kahveler WHERE Kahveid=7 ", bgl.baglanti());
            SqlDataReader oku10 = komut10.ExecuteReader();
            DataList12.DataSource = oku10;
            DataList12.DataBind();






        }
    }
}