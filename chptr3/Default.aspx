<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
    <h2>lesson1:exo2</h2>
    <div>Logon as:
        <asp:DropDownList ID="UserTypeDropDownList" runat="server" AutoPostBack="True">
            <asp:ListItem Text="Registred User"></asp:ListItem>
            <asp:ListItem Text="Guest"></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="UserNameLabel" Text="Label" runat="server"></asp:Label>
        <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="PasswordLabel" Text="Password:" runat="server"></asp:Label>
        <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="LogonButton" Text="Login" runat="server" oncommand="LogonButton_Click" />
    </div>
    <br />
    <hr />
    <h2>lesson2:exo1</h2>
    <div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Default2.aspx" runat="server">GO TO DEFAULT2</asp:HyperLink>
        <br />
        <asp:Button ID="Button1" Text="Submit to server" runat="server" />
    </div>
    <br />
    <hr />
    <h2>lesson2:exo2</h2>
    <div>
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <asp:HiddenField ID="HiddenField1" runat="server" />
    </div>
    <br />
    <hr />
    <h2>lesson2:exo3</h2>
    <div>
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </div>
    <br />
    <hr />
    <h2>lesson2:exo4</h2>
    <div>
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink2" NavigateUrl="~/Default2.aspx" runat="server">GO TO DEFAULT2</asp:HyperLink>
    </div>
    <br />
    <hr />
    <h2>lesson3:exo1</h2>
    <div>
        <asp:Label ID="Label5" runat="server"></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink5" NavigateUrl="~/Default2.aspx" runat="server">GO TO DEFAULT2</asp:HyperLink>
        <p>Application state: Information shared between all users(open up in another browser to see!)</p>
    </div>
    <hr />
    <h2>lesson3:exo2</h2>
    <div>
        <asp:Label ID="Label6" runat="server"></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink6" NavigateUrl="~/Default2.aspx" runat="server">GO TO DEFAULT2</asp:HyperLink>
        <p>Session state</p>
    </div>
</asp:Content>
