<%@ Page Title="" Language="C#" MasterPageFile="~/PageMasterNir.Master" AutoEventWireup="true" CodeBehind="FootballTeamsById.aspx.cs" Inherits="NirWebApp.FootballTeamsById" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
        <div  class="CenterCenter" >
            <h1 class="TitleOne" >ניר לוי </h1>
            <h1 class="TitleOne" >טבלת קבוצות ליגת העל </h1>

            <div class="CenterCenter" >
                <h1 class="TitleOne" >  הזן איידי , ולחץ על כפתור שליחה</h1>

                <asp:Button Class="btnSend" ID="btnSubmit" runat="server" Text="שלח" name="btnSubmit" OnClick="btnSubmit_Click" />
                <asp:TextBox  Class="txtBox" ID="txtId" name="txtId" runat="server" placeholder="להצגת הרשומה ID הזן מספר"  />   
            
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

