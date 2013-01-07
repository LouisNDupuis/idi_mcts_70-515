<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register src="AddressUserControl.ascx" tagname="AddressUserControl" tagprefix="uc1" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
    <uc1:AddressUserControl ID="AddressUserControl1" runat="server" />
    <br />
    <p>Voir onglet "Output" et "Show output from: Debug" dans la console</p>
</asp:Content>
