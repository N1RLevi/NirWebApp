using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using BLL;

namespace DAL
{
    public class FBTeamsDAL
    {

        public static DataTable Get()
        {

            string strHibor = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\NirDataBaseTeams.mdf';Integrated Security=True;Connect Timeout=30";

            SqlConnection sqlCon = new SqlConnection(strHibor);

            sqlCon.Open();

            string sqlShitla = "SELECT * FROM  T_FTeams";

            SqlCommand sqlCMD = new SqlCommand(sqlShitla,sqlCon);

            SqlDataAdapter sqlDa = new SqlDataAdapter();
            sqlDa.SelectCommand = sqlCMD;

            DataTable sqlDT = new DataTable();

            sqlDa.Fill(sqlDT);
            sqlCon.Close();
            return sqlDT;


        }

        public static DataTable GetById(int Id)
        {


            string strHibor = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\NirDataBaseTeams.mdf';Integrated Security=True;Connect Timeout=30";

            SqlConnection sqlCon = new SqlConnection(strHibor);

            sqlCon.Open();

            string sqlShitla = "SELECT * FROM T_FTeams WHERE IdTeam =" + Id;

            SqlCommand sqlCMD = new SqlCommand(sqlShitla, sqlCon);

            SqlDataAdapter sqlDa = new SqlDataAdapter();
            sqlDa.SelectCommand = sqlCMD;

            DataTable sqlDT = new DataTable();

            sqlDa.Fill(sqlDT);
            sqlCon.Close();
            return sqlDT;

        }


        public static int Delete(int Id)
        {
            string strHibor = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\NirDataBaseTeams.mdf';Integrated Security=True;Connect Timeout=30";
            SqlConnection sqlCon = new SqlConnection(strHibor);

            sqlCon.Open();
            string sqlShitla = "Delete From T_FTeams Where IdTeam = " + Id;
            SqlCommand sqlCMD = new SqlCommand(sqlShitla, sqlCon);

            int AffectedRows = sqlCMD.ExecuteNonQuery();
            sqlCon.Close();
            return AffectedRows;
        }


        public static int InsertOrUpdate(FBTeams Team)
        {
            string strHibor = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename='|DataDirectory|\NirDataBaseTeams.mdf';Integrated Security=True;Connect Timeout=30";
            SqlConnection sqlCon = new SqlConnection(strHibor);

            sqlCon.Open();
            string sqlShitla ;

            if (Team.IdTeam == -1)
                sqlShitla = "insert into T_FTeams (TeamName,GamesPlayed,Wins,Draws,Losses,Points,Tpic) values (N'" + Team.TeamName + "'," + Team.GamesPlayed + ",'" + Team.Wins + "','" + Team.Draws + "','" + Team.Losses + "','" + Team.Points + "',N'" + Team.Tpic + "')";
            else
                sqlShitla = "UPDATE T_FTeams SET TeamName = N'" + Team.TeamName + "', GamesPlayed = " + Team.GamesPlayed + ", Wins = " + Team.Wins + ", Draws = " + Team.Draws + ", Losses = " + Team.Losses + ", Points = " + Team.Points + ", Tpic = N'" + Team.Tpic + "' WHERE IdTeam = " + Team.IdTeam;


            SqlCommand sqlCMD = new SqlCommand(sqlShitla, sqlCon);

            int AffectedRows = sqlCMD.ExecuteNonQuery();


            sqlCon.Close();
            return AffectedRows;







        }



    }
}