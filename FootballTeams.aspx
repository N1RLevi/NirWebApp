<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FootballTeams.aspx.cs" Inherits="NirWebApp.FootballTeams" %>

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
