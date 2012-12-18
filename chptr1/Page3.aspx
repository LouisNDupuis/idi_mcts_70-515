<%@ Page Title="Page 3" Language="VB" AutoEventWireup="true" CodeFile="Page3.aspx.vb" Inherits="Page3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script runat="server">
    Protected Sub TimeLabel_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles TimeLabel.Load
        TimeLabel.Text = Date.Now.ToString
    End Sub
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <asp:Label ID="TimeLabel" runat="server" onload="TimeLabel_Load" Text="Label"></asp:Label><hr />
    </div>
    </form>
</body>
</html>
