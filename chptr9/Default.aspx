<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Chapitre 9 - Working with client-side scripting, ajax and jquery
    </h2>
    <br /><br /><br />
    <h1>Exo 1 - script manager et sql  |  Exo 2 - progress bar&nbsp; |&nbsp; EXO 3 - 
        Using the timer control </h1>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        
    </asp:ScriptManager>

    <h2>Suppliers</h2>
    <hr />
    <table>
        <tbody>
        <tr><td>
                <div style="margin: 20px 0px 20px 40px; border: 1 px solid grey; border-radius: 3px; box-shadow: 0px 2px 2px #888; background-color: #eeeeee; width: 300px; padding: 15px;">
                    Company<br />
                    <asp:TextBox ID="TextBoxCompany" runat="server" Width="200" ></asp:TextBox>
                    <br />
                    ContactName<br />
                    <asp:TextBox ID="TextBoxContact" runat="server" Width="200" ></asp:TextBox>
                    <br />
                    City<br />
                    <asp:TextBox ID="TextBoxCity" runat="server" Width="200" ></asp:TextBox>
                    <br />
                    Phone<br />
                    <asp:TextBox ID="TextBoxPhone" runat="server" Width="200" ></asp:TextBox>
                    <br />
                    <asp:HiddenField ID="TextBoxID"  runat="server" Value="" />
                    <asp:Button ID="ButtonSave" runat="server" Text="Add a supplier" 
                        style="margin-top: 15px;" onclick="ButtonSave_Click" />
                </div>
            </td>
            <td>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:Label ID="labelAdvertisement" runat="server" Text="Advertisement"></asp:Label>
                        <asp:Image ImageUrl="~/Images/Calendar_scheduleHS.png" runat="server" ID="img1" style="display:none;" />
                        <asp:Image ImageUrl="~/Images/hourglassIcon.gif" runat="server" ID="img2" style="display:none;" />
                        <asp:Image ImageUrl="~/Images/tree-file.gif" runat="server" ID="img3" style="display:none;" />
                        <asp:Timer ID="Timer1" runat="server" Interval="4000" ontick="Timer1_Tick"></asp:Timer>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td></tr>
        </tbody>
    </table>
    <hr /><br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ButtonSave" EventName="Click" />
        </Triggers>
        <ContentTemplate>    
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <div style="margin: 20px; font-size: larger; color: Green;">
                        Processing, ... please wait ...
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="ID" DataSourceID="SqlDataSource1" AllowPaging="True" 
                Height="16px" Width="689px">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                        SortExpression="ID" />
                    <asp:BoundField DataField="ComapnyName" HeaderText="ComapnyName" 
                        SortExpression="ComapnyName" />
                    <asp:BoundField DataField="ContactName" HeaderText="ContactName" 
                        SortExpression="ContactName" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [ID], [ComapnyName], [ContactName], [City], [Phone] FROM [Suppliers] ORDER BY [ID]"
                InsertCommand="INSERT INTO Suppliers(ID, ComapnyName, ContactName, City, Phone) VALUES (@ID, @company, @contact, @city, @phone)">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBoxID" Name="ID" PropertyName="Value" />
                    <asp:ControlParameter ControlID="TextBoxCompany" Name="company" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBoxContact" Name="contact" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBoxCity" Name="city" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBoxPhone" Name="phone" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
        </ContentTemplate>
        
    </asp:UpdatePanel>
    <br /><br /><br />
</asp:Content>
