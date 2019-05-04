<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InstructorInfo.aspx.cs" Inherits="StudentRegistration.InstructorInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField    ID="hfInstructorID" runat="server" />
        <div>
            <asp:Button ID="btnHome" runat="server" Font-Bold="True" PostBackUrl="~/Home.aspx" Text="Home" Width="125px" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="INSTRUCTOR INFORMATION"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblSalutation" runat="server" Text="Salutation:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtSalutation" runat="server" Width="56px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblInsFirstName" runat="server" Text="First Name:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtInsFirstName" runat="server" Width="198px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblInsLastName" runat="server" Text="Last Name:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtInsLastName" runat="server" Width="205px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblCourseSection" runat="server" Text="Course Section:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtCourseSection" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Start Time:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtStartTime" runat="server" Width="150px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="End Time:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEndTime" runat="server" Width="150px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblLocation" runat="server" Text="Location:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblCapacity" runat="server" Text="Capacity:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtCapacity" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblSuccessMsg" runat="server" ForeColor="#339933"></asp:Label>
            <br />
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click1" />
&nbsp;
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click1" />
        &nbsp;<asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click1" />
            <br />
            <br />
            <asp:GridView ID="gvInstructor" runat="server"  AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="Salutation" HeaderText="Salutation" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                    <asp:BoundField DataField="CourseSection" HeaderText="Course Section" />
                    <asp:BoundField DataField="StartTime" HeaderText="Start Time" />
                    <asp:BoundField DataField="EndTime" HeaderText="End Time" />
                    <asp:BoundField DataField="Location" HeaderText="Location" />
                     <asp:BoundField DataField="Capacity" HeaderText="Capacity" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton Text="Select"   ID="lnkSelect" CommandArgument='<%# Eval("InstructorID")%>'  runat="server" OnClick="lnkSelect_OnClick" />   
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
