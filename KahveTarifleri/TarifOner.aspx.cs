using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KahveTarifleri
{
    public partial class TarifOner : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Unnamed13_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Tarifler(Tarifad ,TarifMalzeme,TarifYapilis,TarifResim,TarifSahip,TarifSahipMail) values(@t1,@t2,@t3,@t4,@t5,@t6)", bgl.baglanti());
            komut.Parameters.AddWithValue("@t1", txtad.Text);
            komut.Parameters.AddWithValue("@t2", txtmalz.Text);
            komut.Parameters.AddWithValue("@t3",txtyap.Text);
            komut.Parameters.AddWithValue("@t4",fileup.FileName);
            komut.Parameters.AddWithValue("@t5", gonderen.Text);
            komut.Parameters.AddWithValue("@t6", mail.Text);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


        }

      
    }
}