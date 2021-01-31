<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="KahveTarifleri.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .lab{
             display: inline-block;
            width: 150px;
            text-align: center;
            border:solid;
            border-radius:10px;
         background-color:#563617;
         color:#F0CA95; 
        padding-left:2px;
           /* padding-right: 10px;*/
        }
        .txt{
             display: inline-block;
            width: 280px;
        }
        .oner{
            border:solid;
            border-color:#563617;
            border-radius:5px;
            padding:20px;
           padding-left:110px;

        }
        h3{
            text-align:center;
             background-color:#563617;
         color:#F0CA95; 
         border-radius:10px;
              
        }
        img{
            border-radius:10px;
            width:450px; height:400px;
        }
      
    </style>
    <div class="container">
        
       <div class="row justify-content-center">
           <div class="col-md-5 justify-content-center">
              
               <img src="resimler/2018-10-05@09-16-06-465_shutterstock_1037995390%20(1).jpg"  />
                   </div>
               
       
             <div class="col-md-7 justify-content-center ">
                 <div class="row">
            <div class="col-md-12"> 
               <h3 ">
                   Tarif Öner
               </h3> 
        </div>
            </div>
                 <div class="row justify-content-center"></div>
                <div class="oner">
                 <div> <asp:Label class="lab"  Text="Tarif Ad:" runat="server" />

                     <asp:TextBox class="txt" runat="server" ID="txtad" />
                 </div> 
                 <br />
                     <div> <asp:Label class="lab"  Text="Malzemeler:" runat="server" />

                     <asp:TextBox class="txt " style="height:100px;" runat="server" ID="txtmalz" />
                 </div>    
                  <br />
                  <div> <asp:Label  class="lab"  Text="Yapılış:" runat="server" />

                     <asp:TextBox class="txt "  style="height:200px;" runat="server" ID="txtyap" />
                 </div>    
                  <br />
                  <div> <asp:Label  class="lab"  Text="Fotoğraf:" runat="server" />

                     <asp:FileUpload class="txt " runat="server" ID="fileup" />
                 </div>    
                  <br />
                    <div> <asp:Label  class="lab"  Text="Gönderen Kişi" runat="server" />

                     <asp:TextBox class="txt " runat="server" ID="gonderen" />
                 </div>    
                  <br />
                    <div> <asp:Label  class="lab"  Text="Mail:" runat="server" />

                     <asp:TextBox class="txt " runat="server" ID="mail"  />
                 </div>    
                  <br />
                    <div> 
                        <asp:Button class=" btn btn-dark" style="width:100px; margin-left:180px;" Text="Öner" runat="server" ID="onerbtn"  />

                   
                 </div>    




                 </div>

          </div>
           </div>
        <br />
        <br />
        
           
                

                 
            




 </div>
</asp:Content>
