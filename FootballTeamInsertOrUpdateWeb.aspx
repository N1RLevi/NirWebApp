<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FootballTeamInsertOrUpdateWeb.aspx.cs" Inherits="NirWebApp.InsertOrUpdateWeb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

              <div>
            <h1>Insert or Update Team</h1>
            
                   <asp:TextBox ID="txtIdTeam" name="txtIdTeam" runat="server" placeholder="לעדכון הזן אידיי"></asp:TextBox>
                   <asp:TextBox ID="txtTeamName" name="txtTeamName" runat="server" placeholder="הזן שם קבוצה"></asp:TextBox>
                   <asp:TextBox ID="txtGamesPlayed" name="txtGamesPlayed" runat="server" placeholder="כמות משחקים"></asp:TextBox>
                   <asp:TextBox ID="txtWins" name="txtWins"  runat="server" placeholder="כמות ניצחונות"></asp:TextBox>
                   <asp:TextBox ID="txtDraws" name="txtDraws" runat="server" placeholder="כמות התיקו"></asp:TextBox>
                   <asp:TextBox ID="txtLosses" name="txtLosses" runat="server" placeholder="כמות הפסדים"></asp:TextBox>
                   <asp:TextBox ID="txtPoints" name="txtPoints" runat="server" placeholder="כמות נקודות"></asp:TextBox>

                   <asp:TextBox ID="txtTpic" name="txtTpic" runat="server" placeholder="שם הסמל"></asp:TextBox>
                   <asp:FileUpload ID="fileUploadTpic" runat="server" />
            
            
                   <asp:Button ID="btnInsertOrUpdate" runat="server" Text="Insert/Update" OnClick="btnInsertOrUpdate_Click" />
            </div>




        </div>


                    <div>

                <asp:Literal runat="server" ID="LitUpdateOrInsert">



                </asp:Literal>

  
   <div>

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
                        
       





            </div>

     
    </form>
</body>
</html>
