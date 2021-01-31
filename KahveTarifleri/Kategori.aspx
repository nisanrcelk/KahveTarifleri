<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Kategori.aspx.cs" Inherits="KahveTarifleri.Kategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
          .card{
           background-color:#563617;
           color:#F0CA95;
        
           margin:30px;

       }
       .btn{
           background-color:#F0CA95;
       }
       .btn:hover{
           background-color:black;
           font-size:20px;
           color:#F0CA95;
       }
      
    </style>
    <div class="container">
     
        <div class="row">
            <div class="ol">
             <asp:DataList ID="DataList3" RepeatDirection="Vertical" RepeatColumns="3" runat="server">
          <ItemTemplate>
            <div class="col-md-3" style="width:300px;">
    <div class="card ">
         
  <asp:Image style="width:240px; height:200px;" class="card-img-top" ID="Image1" runat="server"  ImageUrl='<%# Eval("KahveResim") %>' />
  <div class="card-body">
     
    <h5 class="card-title"> <asp:Label ID="Label5" runat="server" Text='<%#Eval("Kahvead") %>'>   </asp:Label></h5>
               <a href="kahveDetay.aspx?kahveid=<%# Eval("Kahveid") %>" class="btn">Tarife Git
                   
               </a>
     
  
   
  </div>
               
          </div>
          </div>
          </ItemTemplate>
            </asp:DataList>

            </div>


            </div>
         
  </div>
</asp:Content>
