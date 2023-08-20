using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NirWebApp
{
    public partial class FootballTeamDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void btnSubmitDelete_Click(object sender, EventArgs e)
        {
            
            if (int.TryParse(txtId.Text, out int id))
            {
                int result = FBTeams.Delete(id);

                if (result == 0)
                {
                    LitResult.Text = result + " : הרשומה לא נמחקה כמות הרשומות שחזרו הם";
                }else
                {
                    LitResult.Text = result + " : הרשומה כן נמחקה כמות הרשומות שחזרו הם";

                }

            }
        }

    }
}