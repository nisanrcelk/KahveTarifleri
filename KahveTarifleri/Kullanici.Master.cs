﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KahveTarifleri
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        sqlsinifi bgl = new sqlsinifi();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select *From Tbl_Kategoriler ", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();


        }
    }
}