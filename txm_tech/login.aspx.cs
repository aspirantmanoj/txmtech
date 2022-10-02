using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace txm_tech
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                Response.Redirect("view.aspx");
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            bool isexist = CheckUser(TextBox1.Text, TextBox2.Text);

            if (isexist)
            {
                Session["id"] = TextBox1.Text;
                Response.RedirectPermanent("view.aspx");
            }
            else
            {
                Label3.Text = "Invalid Login Credentials";
                Label3.ForeColor = Color.Red;
            }
        }
        public bool CheckUser(string username, string password)
        {
            SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\manoj\\source\\repos\\txm_tech\\txm_tech\\App_Data\\txmtech.mdf; Integrated Security = True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from employee where email=@a and password=@b", con);
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", TextBox2.Text);
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


        /*protected void Button2_Click(object sender, EventArgs e)
        {
            Response.RedirectPermanent("Register.aspx");
        }*/
    }
}
