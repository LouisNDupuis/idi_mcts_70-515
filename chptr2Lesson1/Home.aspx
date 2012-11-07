<%@ Page Title="" Language="C#" MasterPageFile="~/Professional.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    Name:
    <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox><br />
<br />
Color Scheme:
    <asp:DropDownList ID="SitePrefDropDownList" runat="server">
        <asp:ListItem>Professional</asp:ListItem>
        <asp:ListItem>Colorful</asp:ListItem>
    </asp:DropDownList>
    <br />
<br />
    <asp:Button ID="OKButton" runat="server" Text="OK" 
    onclick="OKButton_Click" />
</asp:Content>

