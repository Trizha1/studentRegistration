<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCourses.aspx.cs" Inherits="StudentRegistration.ViewCourses" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <asp:Button ID="btnHome" runat="server" Font-Bold="True" ForeColor="Black" PostBackUrl="~/Home.aspx" Text="Home" Width="125px" />
            <br />
       <asp:GridView ID="gvViewCourse" runat="server"  AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="CourseTitle" HeaderText="Course Title" />
                    <asp:BoundField DataField="Description" HeaderText="Description" />
                    <asp:BoundField DataField="Cost" HeaderText="Cost" />
                    <asp:BoundField DataField="Prerequisite" HeaderText="Prerequisite" />       
                </Columns>
            </asp:GridView>
        <div>
        </div>
    </form>
</body>
</html>
