using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppAssignment2cricketAndTennis
{
    public partial class FormCricketAndTennisDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel3.Visible = false;
           


        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
          
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void RadioButton1_CheckedChanged1(object sender, EventArgs e)
        {
            Panel3.Visible = false;
            if (RadioButton1.Checked)
            {
                Panel1.Visible = true;

            }
          



        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
           
            
        }

        protected void RadioButton2_CheckedChanged1(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            if(RadioButton2.Checked)
            {
                Panel3.Visible = true;
            }    
        }
    }
}