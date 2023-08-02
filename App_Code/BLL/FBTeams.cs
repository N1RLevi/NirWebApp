using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using DAL;
namespace BLL
{
    public class FBTeams
    {
        public int IdTeam { get; set; }
        public string TeamName { get; set; }
        public int GamesPlayed { get; set; }
        public int Wins { get; set; }
        public int Draws { get; set; }
        public int Losses { get; set; }
        public int Points { get; set; }
        public string Tpic { get; set; }

        public static DataTable Get()
        {
            return FBTeamsDAL.Get();
        }


    }
}