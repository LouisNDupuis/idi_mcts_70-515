<%@ Page Title="Lesson 3" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <h2>Employee Lookup</h2>
    <hr />
    Enter Employee ID
    <br />
    <asp:TextBox ID="TextBoxEmpId" runat="server" ></asp:TextBox>&nbsp;
    <br />
    <input type="button" id="ButtonSearch" runat="server" value="search" />

    <div id="empDetails" style="display: none; margin-top: 40px;">
        <h2>Employee Details</h2>
        <hr />
        <b>ID :</b>&nbsp;<span id="textID"></span><br />
        <b>Name :</b>&nbsp;<span id="textName"></span><br />
        <b>Title :</b>&nbsp;<span id="textTitle"></span><br />
        <b>Department :</b>&nbsp;<span id="textDepartment"></span><br />
    </div>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#MainContent_ButtonSearch').click(function () {

                // hide employee detail if already showned
                $('#empDetails').hide("slow");

                var empId = $('#MainContent_TextBoxEmpId').val();

                $.ajax({
                    type: "POST",
                    dataType: "application/json",
                    contentType: "application/json",
                    url: "EmployeeService.asmx/GetEmployeeByID",
                    data: "{'employeeId:'" + empId.toString() + "'}",
                    success: function (data) {
                        $("#textID").html(data.d.ID);
                        $("#textName").html(data.d.FullName);
                        $("#textTitle").html(data.d.Title);
                        $("#textDepartment").html(data.d.Department);

                        $('#empDetails').show("slow");
                    },
                    error: function () {
                        alert("Error calling the web service");
                    }
                });
            });
        });
    </script>

</asp:Content>

