<%@ Page Title="" Language="C#" MasterPageFile="~/PageMasterNir.Master" AutoEventWireup="true" CodeBehind="FootballTeamDelete.aspx.cs" Inherits="NirWebApp.FootballTeamDelete" %>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     
        <div class="CenterCenter">


                        <h1 class="TitleOne">ניר לוי </h1>
            <h1 class="TitleOne" >למחוק קבוצה טבלת ליגת העל </h1>

            <div  class="CenterCenter" >
                <h1 class="TitleOne" >הזן ID לחץ על כפתור שליחה</h1>

                <asp:Button Class="btnSend"  ID="btnSubmitDelete" runat="server" Text="שלח"  name="btnSubmitDelete" onclick="btnSubmitDelete_Click" />
                <asp:TextBox Class="txtBox" ID="txtId" name="txtId" runat="server" placeholder="להצגת הרשומה ID הזן מספר "  />   

            </div>

            <div class="litTxt" >

                <asp:Literal  runat="server" ID="LitResult"> </asp:Literal>

            </div>
        </div>






</asp:Content>




