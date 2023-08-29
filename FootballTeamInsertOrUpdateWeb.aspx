<%@ Page Title="" Language="C#" MasterPageFile="~/PageMasterNir.Master" AutoEventWireup="true" CodeBehind="FootballTeamInsertOrUpdateWeb.aspx.cs" Inherits="NirWebApp.InsertOrUpdateWeb" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="CenterCenter" >

        <div class="CenterCenter" >

              <div class="CenterCenter" >
            <h1 class="TitleOne" >Insert or Update Team</h1>
            
                   <asp:TextBox Class="txtBox" ID="txtIdTeam" name="txtIdTeam" runat="server" placeholder="לעדכון הזן אידיי"></asp:TextBox>
                   <asp:TextBox Class="txtBox" ID="txtTeamName" name="txtTeamName" runat="server" placeholder="הזן שם קבוצה"></asp:TextBox>
                   <asp:TextBox Class="txtBox" ID="txtGamesPlayed" name="txtGamesPlayed" runat="server" placeholder="כמות משחקים"></asp:TextBox>
                   <asp:TextBox Class="txtBox" ID="txtWins" name="txtWins"  runat="server" placeholder="כמות ניצחונות"></asp:TextBox>
                   <asp:TextBox Class="txtBox" ID="txtDraws" name="txtDraws" runat="server" placeholder="כמות התיקו"></asp:TextBox>
                   <asp:TextBox Class="txtBox" ID="txtLosses" name="txtLosses" runat="server" placeholder="כמות הפסדים"></asp:TextBox>
                   <asp:TextBox Class="txtBox" ID="txtPoints" name="txtPoints" runat="server" placeholder="כמות נקודות"></asp:TextBox>

                   <asp:TextBox Class="txtBox"  ID="txtTpic" name="txtTpic" runat="server" placeholder="שם הסמל"></asp:TextBox>
                   <asp:FileUpload  Class="FUL" ID="fileUploadTpic" runat="server" />
            
            
                   <asp:Button  Class="btnSend" ID="btnInsertOrUpdate" runat="server" Text="Insert/Update" OnClick="btnInsertOrUpdate_Click" />
            </div>




        </div>


                    <div class="CenterCenter"  >


                  

            <div class="littxt" >

                <asp:Literal  runat="server" ID="LitUpdateOrInsert"> </asp:Literal>

            </div>
  

                  </div>


  
            
   <div class="CenterCenter" >
    <table  class="TableClass"  >
        <tr class="TableTr">
             <th class="TableTh" >ID של הקבוצות</th>
             <th class="TableTh" >שם הקבוצה</th>
             <th class="TableTh" >משחקים</th>
             <th class="TableTh" >ניצחונות</th>
             <th class="TableTh" >הפסדים</th>
             <th class="TableTh" >תיקו</th>
             <th class="TableTh" >נקודות</th>
             <th class="TableTh" >סמל הקבוצה</th>
        </tr>
        <asp:Repeater id="repTableTeams" runat="server">
             <ItemTemplate>
            <tr class="TableTr">
                <td class="TableTd" ><%#Eval("IdTeam") %></tdclass="TableTr>
                <td class="TableTd" ><%#Eval("TeamName") %></td>
                <td class="TableTd" ><%#Eval("GamesPlayed") %></td>
                <td class="TableTd" ><%#Eval("Wins") %></td>
                <td class="TableTd" ><%#Eval("Draws") %></td>
                <td class="TableTd" ><%#Eval("Losses") %></td>
                <td class="TableTd" ><%#Eval("Points") %></td>
                <td class="TableTd" ><img src='<%#Eval("Tpic") %>' alt='<%#Eval("TeamName") + "סמל של" %>' /></td>
                
            </tr>
            </ItemTemplate>
        </asp:Repeater>



    </table>
   </div>
                
                        
       



  

            </div>

     


</asp:Content>




