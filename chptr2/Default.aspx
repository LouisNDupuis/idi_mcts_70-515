<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%--@ OutputCache Duration="10" VaryByParam="none" --%>
<%@ OutputCache Duration="20" VaryByParam="ctl00$MainContent$ChoiceDropDownList" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Welcome to ASP.NET!
    </h2>
    <p>
        To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">www.asp.net</a>.
    </p>
    <p>
        You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
            title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
    </p>

    <asp:Image ID="Image1" runat="server" SkinID="SkinTheme" /><br />
    <asp:TextBox runat="server" CssClass="TextBox"></asp:TextBox><br />
    <asp:Button runat="server" CssClass="button" Text="Hello!" 
        ID="SwitchThemeButton" onclick="SwitchThemeButton_Click" /><br />
    <hr />
    <h5>Caching Section</h5>
    <asp:Label runat="server" ID="ChosenLabel" Text="Label"></asp:Label>
    <br />
    <asp:DropDownList ID="ChoiceDropDownList" runat="server">
        <asp:ListItem>One</asp:ListItem>
        <asp:ListItem>Two</asp:ListItem>
        <asp:ListItem>Three</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Button ID="SubmitButton" runat="server" Text="OK" 
        onclick="SubmitButton_Click" />
    <hr />
</asp:Content>
