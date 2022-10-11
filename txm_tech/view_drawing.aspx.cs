using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Xml.Linq;


namespace txm_tech
{
    public partial class view_drawing : System.Web.UI.Page
    {
        string idd;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["id"] == null)
            {
                Response.Redirect("index.aspx");
            }
            else if (Request.QueryString["d"] != null)
            {
                
                SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = C:\\Users\\manoj\\source\\repos\\txm_tech\\txm_tech\\App_Data\\txmtech.mdf; Integrated Security = True");
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from [drawing] where draw_no=@a and rev=@b",con);
                cmd.Parameters.AddWithValue("@a", Request.QueryString["d"].ToString());
                cmd.Parameters.AddWithValue("@b", Request.QueryString["v"].ToString());
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    TextBox1.Text = Request.QueryString["d"];
                    TextBox2.Text = Request.QueryString["v"];
                    TextBox3.Text = ds.Tables[0].Rows[0]["division"].ToString();
                    TextBox4.Text = ds.Tables[0].Rows[0]["location"].ToString();
                    TextBox5.Text = ds.Tables[0].Rows[0]["var"].ToString(); 
                    TextBox6.Text = ds.Tables[0].Rows[0]["item_no"].ToString(); 
                    TextBox7.Text = ds.Tables[0].Rows[0]["assy_drw"].ToString(); 
                    TextBox8.Text = ds.Tables[0].Rows[0]["tot_pr"].ToString(); 
                    TextBox9.Text = ds.Tables[0].Rows[0]["desc"].ToString();
                    idd = ds.Tables[0].Rows[0]["did"].ToString();
                    HttpCookie cookie = new HttpCookie("mybigcookie");
                    cookie.Values.Add( "drawing", Request.QueryString["d"].ToString());
                    cookie.Values.Add("version", Request.QueryString["v"].ToString());
                    Response.Cookies.Add(cookie);
                }
                con.Close();
            }
            else
            {
                Response.RedirectPermanent("front.aspx");
            }
        }
 
      
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("index.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("view_operations.aspx?op="+idd);
        }
    }
}