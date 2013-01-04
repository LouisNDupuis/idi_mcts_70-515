<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userreg.aspx.cs" Inherits="userreg" MasterPageFile="~/Site.master" Title="Lesson 1" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <script lang="javascript" type="text/javascript">
        /**
         * Custom function to validate a password
         */
        function ValidatePassword(source, arguments) {
            var data = arguments.Value.split('');
            arguments.IsValid = false;
            // check length
            if (data.length < 6 || data.length > 14) {
                return;
            }
            // check for upper, lower and number
            var uc = false, lc = false, num = false;
            for (var c in data) 
            {
                if (data[c] >= 'A' && data[c] <= 'Z') {
                    uc = true;
                } else if (data[c] >= 'a' && data[c] <= 'z') {
                    lc = true;
                } else if (data[c] >= '0' && data[c] <= '9') {
                    num = true;
                }

                if (uc && lc && num) {
                    arguments.IsValid = true;
                    break;
                }
            }
        }

    </script>
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <h6>User Registration</h6>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:Panel ID="Panel1" runat="server" Width="888px">
            <asp:Label ID="Label1" runat="server" Text="User Name: "></asp:Label>
            <asp:TextBox ID="UserNameTextBox" runat="server" Width="220px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Your name is requiered" ControlToValidate="UserNameTextBox">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="UserNameTextBox" ErrorMessage="Please use only letters and numbers with no spaces" 
                ValidationExpression="\w(6,14)" ToolTip="Please use only letters and numbers with no spaces"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Email: "></asp:Label>
            <asp:TextBox ID="EmailTextBox" runat="server" Width="256px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Your email is requiered" ControlToValidate="EmailTextBox">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="EmailTextBox" ErrorMessage="RegularExpressionValidator" 
                ToolTip="Please enter a valid email address" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Please enter a valid email address</asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="PasswordTextBox" runat="server" Width="231px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ErrorMessage="A password is requiered" ControlToValidate="PasswordTextBox">*</asp:RequiredFieldValidator>
            <asp:CustomValidator ID="CustomValidator1" runat="server" 
                ControlToValidate="PasswordTextBox" 
                ErrorMessage="Please enter 6-14 characters including at least 1 uppercase letter, 1 lowercase letter and 1 number" 
                ToolTip="Please enter 6-14 characters including at least 1 uppercase letter, 1 lowercase letter and 1 number" 
                ClientValidationFunction="ValidatePassword" 
                onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Confirm Password: "></asp:Label>
            <asp:TextBox ID="ConfirmPAsswordTextBox" runat="server" TextMode="Password" 
                Width="180px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ErrorMessage="You must confirm your password" 
                ControlToValidate="ConfirmPAsswordTextBox">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPAsswordTextBox" 
                ErrorMessage="Both password fields must match"></asp:CompareValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Register" />
        </asp:Panel>
    </div>
</asp:Content>