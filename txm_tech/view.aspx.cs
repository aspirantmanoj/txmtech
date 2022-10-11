using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace txm_tech
{
    public partial class view1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("Hellow " + Session["id"] + "<br/> You are successfully logged in.");

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("index.aspx");
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[4].Text;
            // TextBox3.Text = GridView1.SelectedRow.Cells[2].Text;
            // TextBox4.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBox5.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBox6.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox7.Text = GridView1.SelectedRow.Cells[5].Text;
        }
    }
}