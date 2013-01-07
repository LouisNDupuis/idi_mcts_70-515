<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" MasterPageFile="~/Site.master" %>

<%@ Register Assembly="ServerControl1" Namespace="MyCustomControls" TagPrefix="cc1" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <cc1:StateListControl ID="StateListControl1" runat="server">
    </cc1:StateListControl>

    <br />
    <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" 
        onclick="ButtonSubmit_Click" />
    <br />
    <asp:Label ID="LabelSelected" runat="server" Text=""></asp:Label>

</asp:Content>
