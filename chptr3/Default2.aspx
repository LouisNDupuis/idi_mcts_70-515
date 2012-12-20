<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" MasterPageFile="~/Site.master" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>lesson2:exo1</h2>
    <div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Default.aspx" runat="server">GO TO DEFAULT PAGE</asp:HyperLink>
        <br />
        <asp:Button ID="Button1" Text="Submit back to server" runat="server" />
        <br />
    </div>
    <hr />
    <h2>lesson2:exo4</h2>
    <div>
        <asp:Label ID="Label4" runat="server"></asp:Label>
    </div>
</asp:Content>
