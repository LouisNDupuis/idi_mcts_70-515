<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" Title="Lesson 3 - exo 1 & 2 & 3" MasterPageFile="~/Site.master" %>

<%@ Register src="LogoWebPart.ascx" tagname="LogoWebPart" tagprefix="uc1" %>
<%@ Register src="CalendarWebPart.ascx" tagname="CalendarWebPart" tagprefix="uc2" %>

<%@ Register src="GreetUser.ascx" tagname="GreetUser" tagprefix="uc3" %>
<%@ Register src="GetName.ascx" tagname="GetName" tagprefix="uc4" %>
<%@ Register src="ShowNameBackwards.ascx" tagname="ShowNameBackwards" tagprefix="uc5" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <asp:WebPartManager ID="WebPartManager1" runat="server">
            <StaticConnections>
                <asp:WebPartConnection 
                    ID="WebPartConnexion1"
                    ProviderID="GetName1"
                    ProviderConnectionPointID="GetUserName"
                    ConsumerID="GreetUser1"
                    ConsumerConnectionPointID="GetName" 
                 />
                 <asp:WebPartConnection 
                    ID="WebPartConnection2"
                    ProviderID="GetName1"
                    ProviderConnectionPointID="GetUserName"
                    ConsumerID="ShowNameBackwards1"
                    ConsumerConnectionPointID="GetName" 
                 />
            </StaticConnections>
        </asp:WebPartManager>
        <div style="width: 700px;">
            <asp:WebPartZone ID="WebPartZoneTop" runat="server" HeaderText="Top Zone" style="width: 700px; height: auto;">
                <ZoneTemplate>
                    <uc1:LogoWebPart ID="LogoWebPart1" runat="server" title="Logo" />
                </ZoneTemplate>
            </asp:WebPartZone>
            <asp:WebPartZone ID="WebPartZoneLeft" runat="server" HeaderText="Left Zone" style="width: 300px; height: 300px; float: left;">
                <ZoneTemplate>
                    <uc2:CalendarWebPart ID="CalendarWebPart1" runat="server" title="Calendar" />
                </ZoneTemplate>
            </asp:WebPartZone>
            <div ID="WebPartZoneCenter" runat="server" HeaderText="Center Zone" style="width: 400px; height: 300px; float: right;">
                <asp:Label ID="Label1" runat="server" Text="" title="Edit Page"></asp:Label>
                <asp:DropDownList ID="DropDownListModes" runat="server" AutoPostBack="true">
                </asp:DropDownList>
                <asp:EditorZone ID="EditorZone1" runat="server">
                    <ZoneTemplate>
                        <asp:AppearanceEditorPart ID="AppearanceEditorPart1" runat="server" />
                        <asp:LayoutEditorPart ID="LayoutEditorPart1" runat="server" />
                    </ZoneTemplate>
                </asp:EditorZone>
            </div>
            <asp:WebPartZone ID="WebPartZoneBottom" runat="server" HeaderText="Bottom Zone" style="width: 700px; height: auto;">
                <ZoneTemplate>
                    <uc4:GetName ID="GetName1" runat="server" />
                    <uc5:ShowNameBackwards ID="ShowNameBackwards1" runat="server" />
                    <uc3:GreetUser ID="GreetUser1" runat="server" />
                </ZoneTemplate>
            </asp:WebPartZone>
            <asp:CatalogZone ID="CatalogZone1" runat="server" >
                <ZoneTemplate>
                    <asp:DeclarativeCatalogPart ID="DeclarativeCatalogPart1" runat="server">
                        <WebPartsTemplate>
                            <uc1:LogoWebPart ID="LogoWebPart1" runat="server" title="Logo" />
                            <uc2:CalendarWebPart ID="CalendarWebPart1" runat="server" title="Calendar" />
                        </WebPartsTemplate>
                    </asp:DeclarativeCatalogPart>
                </ZoneTemplate>
            </asp:CatalogZone>
        </div>
    </div>
</asp:Content>
