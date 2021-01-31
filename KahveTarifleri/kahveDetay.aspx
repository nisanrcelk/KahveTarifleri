<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="kahveDetay.aspx.cs" Inherits="KahveTarifleri.kahveDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .cizgi{
            border:solid;
            margin:5px;
            border-radius:10px;
            border-color:#563617;
            color:#563617;
            text-align:center;
            padding:5px;

        }
    
        .list-group-item{
                color:#F0CA95;
            background-color:#563617;
       }
       .list-group-item:hover{
        
            background-color:black;
            font-size:17px;
               color:#F0CA95;
       }
         .lab{
             display: inline-block;
            width: 150px;
            text-align: center;
            border:solid;
            border-radius:10px;
         background-color:#563617;
         color:#F0CA95; 
        padding-left:2px;
          
        }
        .txt{
             display: inline-block;
            width: 280px;
        }
#yorumpanel{
      border:solid;
            border-color:#563617;
            border-radius:10px;
            padding:20px;
     
}
 #yorumpanel label{
     background-color:#563617;
          color:white;
        border-radius:3px;
        
}
#yrmlr{
     border:solid;
            border-color:#563617;
            border-radius:10px;
            padding:20px;
}
label{
    color:white;
}

    </style>
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="cizgi">
               <div>
                    <asp:Label style="font-size:25px; font-weight:bold;" runat="server" ID="baslik"> </asp:Label>
                    </div>  
                    <br />
                    <asp:Image ID="Image1" runat="server" />
                  
                <div>
                    <br />
                    <label> Malzemeler: </label>
              <asp:Label  runat="server" id="malze">
                  
              </asp:Label>
                    </div>
                    <br />
                <div>
                     <label> Yapılış: </label>
                <asp:Label runat="server" id="yapilis">
                    Yapılış
                </asp:Label>
                 
                    </div>
                    </div>




            </div>





             <div class="col-md-3">
                 <div class="bg-light border-right mr-3" id="sidebar-wrapper">
    
      <div class="list-group list-group-flush ">
          <a href="#" class="list-group-item">Kategoriler</a>
          <asp:DataList ID="DataList5" runat="server">
          <ItemTemplate>

             <a  class="list-group-item" href="Kategori.aspx?Kategoriid=<%#Eval("Kategoriid")%> "> <asp:Label ID="Label1" runat="server" Text='<%#Eval("Kategoriad") %>'>   </asp:Label> </a>
               
              </ItemTemplate>
            </asp:DataList>
      </div>
    </div>

            </div>
       


 </div>
        <div class="row">
            <div class="col-md-9">
                <div id="yorumpanel">
                    <h5>Yorum Yap</h5>
                   <div> <asp:Label class="lab"  Text="Ad Soyad:" runat="server" />

                     <asp:TextBox class="txt" runat="server" ID="txtad" />
                 </div> 
                     <br />
                    <div> <asp:Label class="lab"  Text="Mail:" runat="server" />

                     <asp:TextBox class="txt" runat="server" ID="TextBox1" />
                 </div> 
                     <br />

                    <div> <asp:Label class="lab" Text="Yorumunuz:" runat="server" />

                     <asp:TextBox class="txt" style="height:100px; "  runat="server" ID="TextBox2" />
                 </div> 
                       <br />
                     <div> 
                        <asp:Button class=" btn btn-dark" style="width:100px; margin-left:180px;" Text="Gönder" runat="server" ID="gonder" OnClick="gonder_Click" />

                   
                 </div>    

                </div>

            </div>

        </div>
        <br />
         <div class="row">
            <div class="col-md-9">
                <div id="yrmlr">
                    <h5>Yorumlar...</h5>
                    <asp:DataList ID="DataList6" runat="server">
          <ItemTemplate>
                  <asp:Label ID="Label2" runat="server" Text='<%#Eval("YorumAdSoyad") %>'>   </asp:Label>
                    <br />
                   <asp:Label ID="Label3" runat="server" Text='<%#Eval("Yorumİcerik") %>'>   </asp:Label>
                    <br />
                </ItemTemplate>
            </asp:DataList>

                </div>


 </div>
 </div>

    </div>




</asp:Content>
