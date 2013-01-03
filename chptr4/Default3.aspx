<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Default3.aspx.cs" MasterPageFile="~/Site.master" Inherits="Default3" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="2" Height="350px" 
            Width="450px" BackColor="#F7F6F3" BorderColor="#CCCCCC" 
            BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
            Font-Size="0.8em" onfinishbuttonclick="Wizard1_FinishButtonClick" OnActiveStepChanged="Wizard1_ActiveStepChanged">
            <HeaderStyle BackColor="#5D7B9D" BorderStyle="Solid" Font-Bold="True" 
                Font-Size="0.9em" ForeColor="White" HorizontalAlign="Left" />
            <NavigationButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" 
                ForeColor="#284775" />
            <SideBarButtonStyle BorderWidth="0px" Font-Names="Verdana" ForeColor="White" />
            <SideBarStyle BackColor="#7C6F57" BorderWidth="0px" Font-Size="0.9em" 
                VerticalAlign="Top" />
            <StepStyle BorderWidth="0px" ForeColor="#5D7B9D" />
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="Select Office">
                    <asp:ImageMap ID="OfficeImageMap" runat="server" 
                        ImageUrl="Images/floorplan.png" Height="350px" Width="475px" 
                        OnClick="OfficeImageMap_Click">
                    </asp:ImageMap>
                    <br />
                    Office Selected: 
                    <asp:Label ID="OfficeSelectedLabel" runat="server"></asp:Label>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Service Date">
                    Select Service Date:
                    <br />
                    <asp:Calendar ID="ServiceCalendar" runat="server"></asp:Calendar>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep3" runat="server" Title="Summary">
                    <asp:Label ID="SummaryLabel1" runat="server" Height="200px" Width="250px"></asp:Label>
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </div>
</asp:Content>
