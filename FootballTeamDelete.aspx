<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FootballTeamDelete.aspx.cs" Inherits="NirWebApp.FootballTeamDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


                        <h1>ניר לוי </h1>
            <h1>טבלת קבוצות ליגת העל </h1>

            <div>
                <h1>הזן ID ולחץ על כפתור שליחה</h1>

                <asp:Button  ID="btnSubmitDelete" runat="server" Text="שלח"  name="btnSubmitDelete" onclick="btnSubmitDelete_Click" />
                <asp:TextBox ID="txtId" name="txtId" runat="server" placeholder="להצגת הרשומה ID הזן מספר "  />   

            </div>

            <div>

                <asp:Literal runat="server" ID="LitResult"></asp:Literal>

            </div>
        </div>
    </form>
</body>
</html>
