<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewStudents.aspx.cs" Inherits="StudentRegistration.ViewStudents" %>

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
           <asp:GridView ID="gvViewStudent" runat="server"  AutoGenerateColumns="false">
                <Columns>                 
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" />
                    <asp:BoundField DataField="State" HeaderText="State" />
                    <asp:BoundField DataField="Zip" HeaderText="Zipcode" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" />
                    <asp:BoundField DataField="RegistrationDate" HeaderText="Registration Date" />                
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
