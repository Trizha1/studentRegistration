<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseInfo.aspx.cs" Inherits="StudentRegistration.CourseInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField    ID="hfCourseID" runat="server" />
        <div>
            <asp:Button ID="btnHome" runat="server" Font-Bold="True" ForeColor="Black" PostBackUrl="~/Home.aspx" Text="Home" Width="125px" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="COURSE INFORMATION"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblCourseTitle" runat="server" Text="Course Title:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtCourseTitle" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblDescription" runat="server" Text="Description:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtDescription" runat="server" Height="161px" Width="361px" TextMode="MultiLine"></asp:TextBox>
            <br />
&nbsp;<br />
            <asp:Label ID="lblCost" runat="server" Text="Cost:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtCost" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblPrereq" runat="server" Text="Prerequisite:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtPrereq" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblSuccessMsg" runat="server" ForeColor="#339933"></asp:Label>
            <br />
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            <br />
            <br />
            <asp:GridView ID="gvCourse" runat="server"  AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="CourseTitle" HeaderText="Course Title" />
                    <asp:BoundField DataField="Description" HeaderText="Description" />
                    <asp:BoundField DataField="Cost" HeaderText="Cost" />
                    <asp:BoundField DataField="Prerequisite" HeaderText="Prerequisite" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton Text="Select"   ID="lnkSelect" CommandArgument='<%# Eval("CourseID")%>'  runat="server" OnClick="lnkSelect_OnClick" />   
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
