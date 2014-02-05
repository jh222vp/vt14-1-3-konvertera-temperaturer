<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="_1._3_Konvertera_temperatur._default" viewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Konvertera temperatur</title>
    <link href="Model/style.css" rel="stylesheet" />
</head>
<body>
    <h1>Konvertera Temperaturer</h1>
    <form id="form1" runat="server">
    <div>
        <asp:Literal ID="Literal1" Text="Starttemperatur" runat="server"></asp:Literal>
        <asp:TextBox ID="startTemp" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="startTemp" runat="server" ErrorMessage="Du måste skriva in något!"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="startTemp" runat="server" ErrorMessage="Bara siffror!" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
    </div>
        <div>
            <asp:Literal ID="Literal2" Text="Sluttemperatur" runat="server"></asp:Literal>
            <asp:TextBox ID="endTemp" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="endTemp" runat="server" ErrorMessage="Du måste skriva in något!"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator2" ControlToValidate="endTemp" runat="server" ErrorMessage="Bara siffror!" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
        </div>

        <div>
            <asp:Literal ID="Literal3" Text="Temperatursteg" runat="server"></asp:Literal>
            <asp:TextBox ID="tempStep" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="tempStep" runat="server" ErrorMessage="Du måste skriva in något!"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator3" ControlToValidate="tempStep" runat="server" ErrorMessage="Bara siffror!" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
        </div>
        <div>
            <asp:RadioButton Text="Celcius till Fahrenheit" checked="true" ID="CelFa" runat="server" GroupName="1" />
            <asp:RadioButton Text="Fahrenheit till Celcius" ID="FarCe" runat="server" GroupName="1" />
        </div>
        <div id="Convert">
            <asp:Button ID="convertButton" runat="server" Text="Konvertera" OnClick="convertButton_Click" />
        </div>
        <div>
        <asp:Table ID="TempTable" runat="server">
            <asp:TableHeaderRow>
                <asp:TableCell ID="CellToFar"> </asp:TableCell>
                <asp:TableCell ID="FarToCell"> </asp:TableCell>
            </asp:TableHeaderRow>
        </asp:Table>
        </div>
    </form>
</body>
</html>
