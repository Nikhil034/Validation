<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <br />
    <div style="text-align:center">

        <asp:Label ID="lblid" Text="Id" runat="server"></asp:Label>
        <asp:TextBox ID="txid" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="req1" runat="server" ControlToValidate="txid" ErrorMessage="Not Allowed to empty field" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regid" runat="server" ControlToValidate="txid"  ValidationExpression="^\d+$" ErrorMessage="Character are not allowed" ForeColor="Red"></asp:RegularExpressionValidator>
        <br /><br />

        <asp:Label ID="iblnm" Text="Name" runat="server"></asp:Label>
        <asp:TextBox ID="txnm" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txnm" ErrorMessage="Not Allowed to empty field" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regnm" runat="server" ControlToValidate="txnm" ValidationExpression="^\D+$" ErrorMessage="Digit are not allowed" ForeColor="Red"></asp:RegularExpressionValidator>
        <br /><br />

         <asp:Label ID="lbleml" Text="Email" runat="server"></asp:Label>
        <asp:TextBox ID="txem" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txem" ErrorMessage="Not Allowed to empty field" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regeml" runat="server" ControlToValidate="txem" ValidationExpression="\S+@\S+\.\S+" ErrorMessage="Email address not in proper formar" ForeColor="Red"></asp:RegularExpressionValidator>

        <br /><br />
        <asp:Label ID="lblpw" Text="Password" runat="server"></asp:Label>
        <asp:TextBox ID="txpw" runat="server" TextMode="Password"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txpw" ErrorMessage="Not Allowed to empty field" ForeColor="Red"></asp:RequiredFieldValidator>

        <br /><br />
        <asp:Label ID="lblcpw" Text="Confirm Password" runat="server"></asp:Label>
        <asp:TextBox ID="txcpw" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txcpw" ErrorMessage="Not Allowed to empty field" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="com1" runat="server" ControlToValidate="txpw" ControlToCompare="txcpw" ErrorMessage="Both password are not match" ForeColor="Red"></asp:CompareValidator>
        <br /><br />
        <asp:Label ID="lblage" Text="Age" runat="server"></asp:Label>
        <asp:TextBox ID="txage" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txage" ErrorMessage="Not Allowed to empty field" ForeColor="Red"></asp:RequiredFieldValidator>
         <asp:RangeValidator ID="regage" runat="server" ControlToValidate="txage" MinimumValue="18" MaximumValue="65" ErrorMessage="Age is not allowed" ForeColor="Red"></asp:RangeValidator>
        <br /><br />
        <asp:Label ID="lblpn" Text="Phone" runat="server"></asp:Label>
        <asp:TextBox ID="txpn" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txpn" ErrorMessage="Not Allowed to empty field" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regpn" runat="server" ControlToValidate="txpn" ValidationExpression="[0-9]{10}" ErrorMessage="Require 10 digit" ForeColor="Red"></asp:RegularExpressionValidator>
        <br /><br />

        

        <asp:Button ID="btsave" runat="server" Text="Save" />
    
    </div>
    </form>
</body>
</html>
