<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="AdminKahve.aspx.cs" Inherits="KahveTarifleri.AKahveler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    <script src="bootstrap/js/bootstrap.js"></script>
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 393px;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style7 {
            margin-left: 0px;
        }
        .auto-style8 {
            width: 597px;
            height: 72px;
        }
        .auto-style9 {
            height: 72px;
        }
    </style>
</asp:Content>
 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div>
         <table>
             <tr>
                 <td>
                     <h3> Kahve Listesi</h3>
                 </td>
                 <td>
                     <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="+" OnClick="Button1_Click"  />
                 </td>
                 <td>
                     <asp:Button class="btn btn-warning" ID="Button2" runat="server" Text="-" OnClick="Button2_Click1" />
                 </td>
             </tr>
         </table>

    </div>
    <asp:Panel ID="Panel1" runat="server">
      <asp:DataList ID="DataList1" runat="server">
          <ItemTemplate>
    <table class="auto-style4">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Kahvead") %>'></asp:Label>
            </td>
            <td class="auto-style6">
                <a href="Akahveler.aspx?Kahveid=<%#Eval("Kahveid") %> &islem=sil"> <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/resimler/indir (1).png" Width="30px" /></a>
            </td>
            <td class="auto-style6">
                <a href="KahveDuzenle.aspx?Kahveid=<%#Eval("Kahveid") %>"> <asp:Image ID="Image2" runat="server" CssClass="auto-style7" Height="30px" ImageUrl="~/resimler/ref.png" Width="30px" /></a> 
            </td>
        </tr>
    </table>
  </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
       <div>
         <table>
             <tr>
                 <td>
                     <h3> Kahve Ekle</h3>
                 </td>
                 <td>
                     <asp:Button class="btn btn-success" ID="Button3" runat="server" Text="+" OnClick="Button3_Click1"  />
                 </td>
                 <td>
                     <asp:Button class="btn btn-warning" ID="Button4" runat="server" Text="-" OnClick="Button4_Click1"  />
                 </td>
             </tr>
         </table>

    </div>


           <asp:Panel ID="Panel2" runat="server">
               <table class="auto-style4">
                   <tr>
                       <td class="auto-style8">
                           <asp:Label ID="Label2" runat="server" Text="Kahve Adı:"></asp:Label>
                           <br />
                           <asp:Label ID="Label3" runat="server" Text="Malzemeler:"></asp:Label>
                           <br />
                            <asp:Label ID="Label4" runat="server" Text="Tarif:"></asp:Label>
                           <br />
                                <asp:Label ID="Label6" runat="server" Text="Resim:"></asp:Label>
                           <br />
                            <asp:Label ID="Label5" runat="server" Text="Kategori"></asp:Label>

                         
                       </td>
                       <td class="auto-style9">
                           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                           <br />
                           <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                           <br />
                             <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                           <br />
                             <asp:FileUpload ID="FileUpload2" runat="server" />
                           <br />
                       <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                       </td>
                       

                   </tr>
                 
               </table>
                 <asp:Button class="btn btn-success" Text="Ekle" runat="server" OnClick="Unnamed1_Click" />





           </asp:Panel>





</asp:Content>
