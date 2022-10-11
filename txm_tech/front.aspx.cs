using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace txm_tech
{
    public partial class front : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("index.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool isexist = CheckDrawing(TextBox2.Text, TextBox3.Text);

            if (isexist)
            {
                Session["dr"] = TextBox2.Text;
                Response.RedirectPermanent("view_drawing.aspx?d="+TextBox2.Text+"&v="+TextBox3.Text);
            }
            else
            {
                Label4.Text = "Drawing Not Found";
                Label4.ForeColor = Color.Red;
            }
        }
        public bool CheckDrawing(string username, string password)
        {
            SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\manoj\\source\\repos\\txm_tech\\txm_tech\\App_Data\\txmtech.mdf; Integrated Security = True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from drawing where draw_no=@a and rev=@b", con);
            cmd.Parameters.AddWithValue("@a", TextBox2.Text);
            cmd.Parameters.AddWithValue("@b", TextBox3.Text);
            SqlDataReader dr = null;

            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}