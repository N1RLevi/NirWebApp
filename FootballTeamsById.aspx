<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FootballTeamsById.aspx.cs" Inherits="NirWebApp.FootballTeamsById" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    
    <style>

        img{
            width:30px;
            height:30px;            
        }
        table{
            text-align:center;
        }
    </style>
    <body>
    
    <form id="form1" runat="server">
        <div>
            <h1>ניר לוי </h1>
            <h1>טבלת קבוצות ליגת העל </h1>

            <div>
                <h1>הזן ID ולחץ על כפתור שליחה</h1>

                <asp:Button  ID="btnSubmit" runat="server" Text="שלח"  name="btnSubmit" onclick="btnSubmit_Click" />
                <asp:TextBox ID="txtId" name="txtId" runat="server" placeholder="להצגת הרשומה ID הזן מספר "  />   

            </div>

            <table border="1">
                <tr>
                     <th>ID של הקבוצות</th>
                     <th>שם הקבוצה</th>
                     <th>משחקים</th>
                     <th>ניצחונות</th>
                     <th>הפסדים</th>
                     <th>תיקו</th>
                     <th>נקודות</th>
                     <th>סמל הקבוצה</th>
                </tr>
                <asp:Repeater id="repTableTeams" runat="server">
                     <ItemTemplate>
                    <tr>
                        <td><%#Eval("IdTeam") %></td>
                        <td><%#Eval("TeamName") %></td>
                        <td><%#Eval("GamesPlayed") %></td>
                        <td><%#Eval("Wins") %></td>
                        <td><%#Eval("Draws") %></td>
                        <td><%#Eval("Losses") %></td>
                        <td><%#Eval("Points") %></td>
                        <td><img src='<%#Eval("Tpic") %>' alt='<%#Eval("TeamName") + "סמל של" %>' /></td>
                    </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>
</body>



</html>
