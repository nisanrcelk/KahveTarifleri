using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace KahveTarifleri
{
    public partial class KahveDuzenle : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["Kahveid"];
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select *From Tbl_kahveler where Kahveid=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TextBox1.Text = dr[1].ToString();
                    TextBox2.Text = dr[2].ToString();
                    TextBox3.Text = dr[3].ToString();
                }
                bgl.baglanti().Close();
                if (Page.IsPostBack == false)
                {
                    SqlCommand komut2 = new SqlCommand("Select *From Tbl_Kategoriler", bgl.baglanti());
                    SqlDataReader dr2 = komut2.ExecuteReader();
                    DropDownList1.DataTextField = "Kategoriad";
                    DropDownList1.DataValueField = "Kategoriid";
                    DropDownList1.DataSource = dr2;
                    DropDownList1.DataBind();
                }
            }

            
        }

        protected void Button1_Click(object sender, EventArgs e)

        {
            FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
            SqlCommand komut = new SqlCommand("update Tbl_kahveler  set Kahvead=@p1,KahveMalzeme=@p2,KahveTarif=@p3,Kategoriid=@p4, KahveResim=@p6 where Kahveid=@p5", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@p6", "~/resimler/"+FileUpload1.FileName);
            komut.Parameters.AddWithValue("@p5",id);

            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }
}