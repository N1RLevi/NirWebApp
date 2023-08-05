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
    public partial class FootballTeamsById : System.Web.UI.Page
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




        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // קבלת ה-ID מהשדה קלט
            if (int.TryParse(txtId.Text, out int id))
            {
                DataTable dt = FBTeams.GetById(id);
                repTableTeams.DataSource = dt;
                repTableTeams.DataBind();
            }
        }


    }
}