<%@ Page Title="lesson 2 - exo 2 " Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css" >
        .weak  
        {
            border: 2px solid #FF0000; 
        }
        .medium 
        { 
            border: 2px solid #FFFF00; 
        }
        .strong  
        {
            border: 2px solid #008000; 
        }
    </style>

</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:ScriptManager ID="ScriptManager1" runat="server" >
        <Scripts>
            <asp:ScriptReference Path="~/Scripts/PassTextBox.js" />
        </Scripts>
    </asp:ScriptManager>

     <script type="text/javascript">

         var app = Sys.Application;
         app.add_init(appInit);

         function appInit(sender, args) {
             $create(
                AjaxEnabled.PassTextBox,
                {
                    weakCssClass: 'weak',
                    mediumCssClass: 'medium',
                    strongCssClass: 'strong'
                },
                null,
                null,
                $get('MainContent_TextBoxPassword')
            );
         }

    </script>


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
        <asp:TextBox ID="TextBoxPassword" runat="server" Width="200" TextMode="Password" />
        <asp:Label ID="LabelStrength" runat="server" Text="" ></asp:Label>
        <br />
        <input id="ButtonSubmit" type="button" value="Log On" />
    </div>
    

</asp:Content>

