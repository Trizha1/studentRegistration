<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewInstructors.aspx.cs" Inherits="StudentRegistration.ViewInstructors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnHome" runat="server" Font-Bold="True" ForeColor="Black" PostBackUrl="~/Home.aspx" Text="Home" Width="125px" />
            <br />
            <asp:GridView ID="gvViewInstructor" runat="server"  AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="Salutation" HeaderText="Salutation" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                    <asp:BoundField DataField="CourseSection" HeaderText="Course Section" />
                    <asp:BoundField DataField="StartTime" HeaderText="Start Time" />
                    <asp:BoundField DataField="EndTime" HeaderText="End Time" />
                    <asp:BoundField DataField="Location" HeaderText="Location" />
                     <asp:BoundField DataField="Capacity" HeaderText="Capacity" />                    
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
