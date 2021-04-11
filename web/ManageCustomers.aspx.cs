using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection conn;
    SqlDataAdapter adp;
    public string cs = ConfigurationManager.AppSettings["Connect"].ToString();
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["a_id"] != null)
            {
                conn = new SqlConnection(cs);
                conn.Open();
                adp = new SqlDataAdapter("select C_id,C_fname,C_ph,C_email,C_balance from Customer_master", conn);
                dt = new DataTable();
                adp.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "No record Found";
                }
                conn.Close();
            }
            else
            {
                Response.Write("<script>alert('Log in first')</script>");
                Response.Redirect("AdminLogin.aspx");
            }
        }


    }
}