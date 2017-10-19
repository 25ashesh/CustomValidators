<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function validateForm() {
            if (form1.ddlStates.value === ""
                && form1.txtInput.value === ""
            ) {
                alert("Please enter at least field");
                return false;
            }
        }
    </script>
</head>
<body>
    <form id="form1" onsubmit="validateForm()" runat="server">
        <div>
            <asp:DropDownList ID="ddlStates" runat="server">
                <asp:ListItem Text="" Value="" />
                <asp:ListItem Text="Illinois" Value="Illinois" />
                <asp:ListItem Text="Indiana" Value="Indiana" />
                <asp:ListItem Text="Iowa" Value="Iowa" />
            </asp:DropDownList>
            <asp:CustomValidator ID="CustomValidator1" runat="server"
                ErrorMessage="Field1 be empty!"
                ControlToValidate="ddlStates"
                OnServerValidate="ServerValidate_1"
                ForeColor="Red" ValidateEmptyText="True" ValidationGroup="a"></asp:CustomValidator>

            <asp:TextBox ID="txtInput" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator2" runat="server"
                ErrorMessage="Field2 be empty!"
                ControlToValidate="txtInput"
                OnServerValidate="ServerValidate_1"
                ForeColor="Red" ValidateEmptyText="True" ValidationGroup="a"></asp:CustomValidator>


            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" ValidationGroup="a" />
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" ValidationGroup="a" runat="server" />
        </div>
    </form>
</body>
</html>
