using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ServerValidate_1(object source, ServerValidateEventArgs args)
    {
        if (string.IsNullOrEmpty(ddlStates.Text) && string.IsNullOrEmpty(txtInput.Text))
        { args.IsValid = false; }
        else if (!string.IsNullOrEmpty(ddlStates.Text) && !string.IsNullOrEmpty(txtInput.Text))
        { args.IsValid = true; }
        else if (!string.IsNullOrEmpty(ddlStates.Text) || !string.IsNullOrEmpty(txtInput.Text))
        { args.IsValid = true; }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }

}