<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
        <asp:TextBox ID="NameTextBox" runat="server" MaxLength="12"></asp:TextBox>
        <asp:Button ID="AddButton" runat="server" Text="Add" 
            onclick="AddButton_Click" />
        
        <hr />
        
        <asp:Literal ID="Literal1" runat="server" Text="Shipping Type: "></asp:Literal>
        <asp:RadioButtonList ID="ShippingTypeRadioButtonList" runat="server">
            <asp:ListItem Text="Standard"></asp:ListItem>
            <asp:ListItem Text="Priority"></asp:ListItem>
            <asp:ListItem Text="Urgent"></asp:ListItem>
        </asp:RadioButtonList>
        
        <hr />

        <asp:Literal ID="DestintionLiteral" runat="server" Text="Destinations: "></asp:Literal><br />
        <asp:CheckBoxList ID="DestinationCheckBoxList" runat="server">
            
        </asp:CheckBoxList>
        <hr />

        <asp:Button ID="ShipButton" runat="server" Text="Ship" 
            onclick="ShipButton_Click" /><br />
        <asp:Label ID="ShippingConfirmationLabel" runat="server" Text=""></asp:Label>
    </div>
</asp:Content>