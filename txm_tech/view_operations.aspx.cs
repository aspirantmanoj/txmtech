using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

namespace txm_tech
{
    public partial class view_operations : System.Web.UI.Page
    {
        public string idd;
        public static int i=0;
        SqlConnection con;
        SqlDataAdapter da;
        DataTable dt = new DataTable();
        DataRow dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("index.aspx");
            }
            else if (Request.QueryString["op"] != null)
            {

                con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\manoj\\source\\repos\\txm_tech\\txm_tech\\App_Data\\txmtech.mdf; Integrated Security = True");
                SqlCommand cmd = new SqlCommand("Select * from [Table] where did=@a", con);
                cmd.Parameters.AddWithValue("@a", Request.QueryString["op"].ToString());
                da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                Label4.Text = Request.Cookies["mybigcookie"]["drawing"];
                Label5.Text = Request.Cookies["mybigcookie"]["version"];
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("index.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (i == (dt.Rows.Count - 1))
                Label3.Text = "Last Record !";
            else
            { i++; Label3.Text = ""; }
            dr = dt.Rows[i];
            TextBox1.Text = Convert.ToString(dr[3]);
            TextBox2.Text = Convert.ToString(dr[4]);
            TextBox3.Text = Convert.ToString(dr[5]);
            TextBox4.Text = Convert.ToString(dr[6]);
            TextBox5.Text = Convert.ToString(dr[7]);
            TextBox6.Text = Convert.ToString(dr[12]);
            DateTime dte = DateTime.Parse(Convert.ToString(dr[14]));
            TextBox7.Text = dte.ToString("yyyy-MM-dd");
            DateTime dtr = DateTime.Parse(Convert.ToString(dr[15]));
            TextBox8.Text = dtr.ToString("yyyy-MM-dd");
            TextBox9.Text = Convert.ToString(dr[13]);
            TextBox10.Text = Convert.ToString(dr[8]);
            TextBox11.Text = Convert.ToString(dr[9]);
            TextBox12.Text = Convert.ToString(dr[10]);
            TextBox13.Text = Convert.ToString(dr[11]);

        }

        protected void Button5_Click(object sender, EventArgs e)
        {//load
            i = 0;
            dr = dt.Rows[i];
            TextBox1.Text = Convert.ToString(dr[3]);
            TextBox2.Text = Convert.ToString(dr[4]);
            TextBox3.Text = Convert.ToString(dr[5]);
            TextBox4.Text = Convert.ToString(dr[6]);
            TextBox5.Text = Convert.ToString(dr[7]);
            TextBox6.Text = Convert.ToString(dr[12]);
            DateTime dte = DateTime.Parse(Convert.ToString(dr[14]));
            TextBox7.Text = dte.ToString("yyyy-MM-dd");
            DateTime dtr = DateTime.Parse(Convert.ToString(dr[15]));
            TextBox8.Text = dtr.ToString("yyyy-MM-dd");
            TextBox9.Text = Convert.ToString(dr[13]);
            TextBox10.Text = Convert.ToString(dr[8]);
            TextBox11.Text = Convert.ToString(dr[9]);
            TextBox12.Text = Convert.ToString(dr[10]);
            TextBox13.Text = Convert.ToString(dr[11]);
            Label3.Text = "";
            Label4.Text = Request.Cookies["mybigcookie"]["drawing"];
            Label5.Text = Request.Cookies["mybigcookie"]["version"];

        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            if (i == 0)
                Label3.Text = "First record !";
            else
            { i--; Label3.Text = ""; }
            dr = dt.Rows[i];
            TextBox1.Text = Convert.ToString(dr[3]);
            TextBox2.Text = Convert.ToString(dr[4]);
            TextBox3.Text = Convert.ToString(dr[5]);
            TextBox4.Text = Convert.ToString(dr[6]);
            TextBox5.Text = Convert.ToString(dr[7]);
            TextBox6.Text = Convert.ToString(dr[12]);
            DateTime dte = DateTime.Parse(Convert.ToString(dr[14]));
            TextBox7.Text = dte.ToString("yyyy-MM-dd");
            DateTime dtr = DateTime.Parse(Convert.ToString(dr[15]));
            TextBox8.Text = dtr.ToString("yyyy-MM-dd");
            TextBox9.Text = Convert.ToString(dr[13]);
            TextBox10.Text = Convert.ToString(dr[8]);
            TextBox11.Text = Convert.ToString(dr[9]);
            TextBox12.Text = Convert.ToString(dr[10]);
            TextBox13.Text = Convert.ToString(dr[11]);

        }
    }
}
