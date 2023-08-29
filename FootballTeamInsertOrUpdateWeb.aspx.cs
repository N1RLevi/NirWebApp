using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Runtime;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NirWebApp
{
    public partial class InsertOrUpdateWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                if (Request.QueryString["id"] != null)
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    DataTable dt = FBTeams.GetById(id);
                    repTableTeams.DataSource = dt;
                    repTableTeams.DataBind();
                }


            }



        }

        protected void btnInsertOrUpdate_Click(object sender, EventArgs e)
        {





     

            FBTeams team = new FBTeams();


            int idTeam;
            if (int.TryParse(txtIdTeam.Text, out idTeam))
            {
                team.IdTeam = idTeam;
            }
            else
            {
               
                team.IdTeam = -1;
            }



            team.TeamName = txtTeamName.Text;
            team.GamesPlayed = int.Parse(txtGamesPlayed.Text);
            team.Wins = int.Parse(txtWins.Text);
            team.Draws = int.Parse(txtDraws.Text);
            team.Losses = int.Parse(txtLosses.Text);
            team.Points = int.Parse(txtPoints.Text);
            team.Tpic = txtTpic.Text;



            if (fileUploadTpic.HasFile)
            {
                string fileName = Path.GetFileName(fileUploadTpic.FileName);
                string newFileName = txtTpic.Text + Path.GetExtension(fileName);

                string imagePath = Path.Combine(Server.MapPath("~/Images/"), newFileName);
                fileUploadTpic.SaveAs(imagePath);
                team.Tpic = "Images/" + newFileName; 
            }





            int result = FBTeams.InsertOrUpdate(team);


               

                if (result == 0)
                {
                LitUpdateOrInsert.Text = result + " : ההוספה או עדכון לא הצליחו";

                }
            else
                {
                LitUpdateOrInsert.Text = result + " : FootballTeamsById ההוספה או העדכון  עבר  בהצלחה אפשר גם למצוא את הרשומה באתר";
                DataTable dt = FBTeams.GetById(idTeam);
                repTableTeams.DataSource = dt;
                repTableTeams.DataBind();
            }

            


        }









    }
}