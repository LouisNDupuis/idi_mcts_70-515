<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>
            <asp:Label ID="LabelWelcome" runat="server" Text="Welcome" meta:resourcekey="LabelWelcomeRessource1"></asp:Label>
        </h1>
        <asp:DropDownList ID="DropDownListLang" runat="server" AutoPostBack="True" 
            meta:resourcekey="DropDownListLangResource1">
        </asp:DropDownList>
    </div>
    </form>
</body>
</html>
