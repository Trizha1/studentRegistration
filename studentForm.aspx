<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentForm.aspx.cs" Inherits="StudentRegistration.studentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField    ID="hfStudentID" runat="server" />
        <div>
            <asp:Button ID="btnHome" runat="server" Font-Bold="True" PostBackUrl="~/Home.aspx" Text="Home" Width="125px" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="STUDENT INFORMATION" Font-Bold="True"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtFirstName" runat="server" Height="19px" Width="163px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtLastName" runat="server" Height="19px" Width="163px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblAddress" runat="server" Text="Street Address:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtAddress" runat="server" Height="20px" Width="251px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblCity" runat="server" Text="City:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtCity" runat="server" Height="19px" Width="163px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblState" runat="server" Text="State:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtState" runat="server" Height="19px" Width="163px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblZip" runat="server" Text="Zipcode:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtZip" runat="server" Height="19px" Width="101px"></asp:TextBox>
&nbsp;
            <br />
            <br />
            <asp:Label ID="lblPhone" runat="server" Text="Phone:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtPhone" runat="server" Height="19px" Width="163px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblRegistrationDate" runat="server" Text="Registration Date (YYYY-MM-DD):"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtRegistrationDate" runat="server"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="lblSuccessMsg" runat="server" ForeColor="#339933"></asp:Label>
            <br />
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" Height="26px" />
        &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
            <br />
            <br />
            <asp:GridView ID="gvStudent" runat="server"  AutoGenerateColumns="false">
                <Columns>                 
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" />
                    <asp:BoundField DataField="State" HeaderText="State" />
                    <asp:BoundField DataField="Zip" HeaderText="Zipcode" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" />
                    <asp:BoundField DataField="RegistrationDate" HeaderText="Registration Date" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton Text="Select"   ID="lnkSelect" CommandArgument='<%# Eval("StudentID")%>'  runat="server" OnClick="lnkSelect_OnClick" />   
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
