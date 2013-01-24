<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ScriptDebug.aspx.cs" Inherits="ScriptDebug" Debug="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <script language="javascript" type="text/javascript">
        function buttonClick() {
            var counter = 0;
            for(i = 0; i < 10; ++i) {
                counter += i;
            }
            alert('Boutton cliquer!' + counter);
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h2>Script Debug</h2>
    <input id="button1" type="button" name="button1" value="Click" onclick="buttonClick()" />
</asp:Content>

