using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using BLL;

namespace DAL
{
    public class FBTeamsDAL
    {

        public static DataTable Get()
        {

            string strHibor = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\dolev\\Desktop\\NirLeviProject\\NirWebApp\\App_Data\\NirDataBaseTeams.mdf;Integrated Security=True;Connect Timeout=30";

            SqlConnection sqlCon = new SqlConnection(strHibor);

            sqlCon.Open();

            string sqlShitla = "SELECT * FROM  T_FTeams";

            SqlCommand sqlCMD = new SqlCommand(sqlShitla,sqlCon);

            SqlDataAdapter sqlDa = new SqlDataAdapter();
            sqlDa.SelectCommand = sqlCMD;

            DataTable sqlDT = new DataTable();

            sqlDa.Fill(sqlDT);
            return sqlDT;


        }



    }
}