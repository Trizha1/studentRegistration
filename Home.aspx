<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="StudentRegistration.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageButton ID="ImageButton5" runat="server" Height="89px" ImageUrl="~/images/abc.png" PostBackUrl="~/Home.aspx" Width="385px" />
            <br />
            <br />
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" Height="110px" ImageUrl="~/images/addStudent.png" PostBackUrl="~/studentForm.aspx" Width="130px" />
&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/studentForm.aspx" Font-Bold="True" Font-Size="X-Large" ForeColor="Black">Add/Edit Students</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
            <asp:ImageButton ID="ImageButton6" runat="server" Height="110px" ImageUrl="~/images/student.png" PostBackUrl="~/ViewStudents.aspx" Width="130px" />
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" PostBackUrl="~/ViewStudents.aspx">View Students</asp:LinkButton>
            <br />
            <br />
            <br />
            <asp:ImageButton ID="ImageButton3" runat="server" Height="110px" ImageUrl="~/images/course.png" PostBackUrl="~/CourseInfo.aspx" Width="130px" />
&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/CourseInfo.aspx" Font-Bold="True" Font-Size="X-Large" ForeColor="Black">Add/Edit Courses</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton7" runat="server" Height="110px" ImageUrl="~/images/courses.png" PostBackUrl="~/ViewCourses.aspx" Width="140px" />
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" PostBackUrl="~/ViewCourses.aspx">View Courses</asp:LinkButton>
            <br />
            <br />
            <asp:ImageButton ID="ImageButton4" runat="server" Height="110px" ImageUrl="~/images/Instructor.png" PostBackUrl="~/InstructorInfo.aspx" Width="130px" />
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="linkInstructor" runat="server" PostBackUrl="~/InstructorInfo.aspx" Font-Bold="True" Font-Size="X-Large" ForeColor="Black">Add/Edit Instructors</asp:LinkButton>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton8" runat="server" Height="110px" ImageUrl="~/images/professor.jpg" PostBackUrl="~/ViewInstructors.aspx" style="margin-left: 0px" Width="140px" />
&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" PostBackUrl="~/ViewInstructors.aspx">View Instructors</asp:LinkButton>
            </div>
    </form>
</body>
</html>
