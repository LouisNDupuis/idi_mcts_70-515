<%@ Page Title="lesson 2" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeadContent" Runat="Server">
    <script type="text/javascript">

        function _OnKeyPress() {
            var checker = new AjaxEnabled.PasswordStrengthComponent();
            var pass = document.getElementById("MainContent_TextBoxPassword").value;
            var strength = checker.returnPasswordStrength(pass);
            document.getElementById("MainContent_LabelStrength").innerText = strength;
        }

    </script>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Scripts>
            <asp:ScriptReference Path="~/Scripts/PasswordStrengthComponent.js" />
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
        <asp:TextBox ID="TextBoxPassword" runat="server" Width="200" TextMode="Password" onKeyUp="_OnKeyPress()" />
        <asp:Label ID="LabelStrength" runat="server" Text="" ></asp:Label>
        <br />
        <input id="ButtonSubmit" type="button" value="Log On" />
    </div>
   
</asp:Content>

