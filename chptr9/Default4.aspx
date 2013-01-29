<%@ Page Title="Lesson 2 - exo 3" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>
<%@ Register Assembly="PassTextBox" Namespace="AjaxEnabled" TagPrefix="ajaxEnabled" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/Bin/PassTextBox.dll" />
        </Scripts>
    </asp:ScriptManager>

    <div style="background-color: #bbb; border: 1px solid black; border-radius: 5px;">
        <div style="font-size: large; font-weight: bold">User logon</div>
        <hr />
        <br />
        User Name:
        <br />
        <asp:TextBox ID="TextBoxUserName" runat="server" Width="200" />
        <br /> 
        Password:
        <br />
        <ajaxEnabled:PassTextBox ID="textBox1" runat="server" Width="200" TextMode="Password" 
            WeakCssClass="weak" MediumCssClass="medium" StrongCssClass="strong"></ajaxEnabled:PassTextBox>
        <br />
        <input id="ButtonSubmit" type="button" value="Log On" />
    </div>
    
</asp:Content>

