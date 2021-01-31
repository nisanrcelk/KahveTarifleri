using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace KahveTarifleri
{
    public partial class AKahveler : System.Web.UI.Page
    {
        sqlsinifi bgl = new sqlsinifi();
        String islem = "";
        string id;

        protected void Page_Load(object sender, EventArgs e)

        {
            SqlCommand komut = new SqlCommand("Select *From Tbl_Kahveler", bgl.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            Panel1.Visible = false;
            Panel2.Visible = false;

          
            if (Page.IsPostBack == false)
            {
                SqlCommand komut2 = new SqlCommand("Select *From Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();
                DropDownList1.DataTextField = "Kategoriad";
                DropDownList1.DataValueField = "Kategoriid";
                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();

                id = Request.QueryString["Kahveid"];
                islem = Request.QueryString["islem"];
            }
            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete From Tbl_kahveler where Kahveid=@p1 ", bgl.baglanti());
                komutsil.Parameters.AddWithValue("@p1", id);

                komutsil.ExecuteNonQuery();
                bgl.baglanti().Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;

        }
     
      
        protected void Button2_Click1(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            FileUpload2.SaveAs(Server.MapPath("/resimler/" + FileUpload2.FileName));
            SqlCommand komut = new SqlCommand("insert into Tbl_kahveler (Kahvead,KahveMalzeme,KahveTarif,Kategoriid,KahveResim) values (@p1,@p2,@p3,@p4,@p5)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.Parameters.AddWithValue("@p2", TextBox2.Text);
            komut.Parameters.AddWithValue("@p3", TextBox3.Text);
            komut.Parameters.AddWithValue("@p5", "~/resimler/" + FileUpload2.FileName);
            komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

        }
    }
}