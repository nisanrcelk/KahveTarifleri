using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace KahveTarifleri
{
    public class sqlsinifi
    {
        public SqlConnection baglanti()
        {
            
           SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-3JCKQAG;Initial Catalog=Dbo_kahvetarif;Integrated Security=True");
            baglan.Open();
            return baglan;
        }


    }
}