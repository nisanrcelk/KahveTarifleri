<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="AdminYorum.aspx.cs" Inherits="KahveTarifleri.Yorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    <script src="bootstrap/js/bootstrap.js"></script>

</asp:Content>
 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div>
         <table>
             <tr>
                 <td>
                     <h3> Onaylı Yorum Listesi</h3>
                 </td>
                 <td>
                     <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="+" OnClick="Button1_Click"  />
                 </td>
                 <td>
                     <asp:Button class="btn btn-warning" ID="Button2" runat="server" Text="-" OnClick="Button2_Click"  />
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
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("YorumAdSoyad") %>'></asp:Label>
            </td>
            <td class="auto-style6">
              <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/resimler/indir (1).png" Width="30px" />
            </td>
            <td class="auto-style6">
               <asp:Image ID="Image2" runat="server" CssClass="auto-style7" Height="30px" ImageUrl="~/resimler/ref.png" Width="30px" />
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
                     <h3> Onaysız Listesi</h3>
                 </td>
                 <td>
                     <asp:Button class="btn btn-success" ID="Button3" runat="server" Text="+" OnClick="Button3_Click"   />
                 </td>
                 <td>
                     <asp:Button class="btn btn-warning" ID="Button4" runat="server" Text="-"  OnClick="Button4_Click"  />
                 </td>
             </tr>
         </table>

    </div>
    <asp:Panel ID="Panel2" runat="server">
      <asp:DataList ID="DataList2" runat="server">
          <ItemTemplate>
    <table class="auto-style4">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("YorumAdSoyad") %>'></asp:Label>
            </td>
            <td class="auto-style6">
              <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/resimler/indir (1).png" Width="30px" />
            </td>s
            <td class="auto-style6">
           <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>" >  <asp:Image ID="Image2" runat="server" CssClass="auto-style7" Height="30px" ImageUrl="~/resimler/ref.png" Width="30px" /></a>
            </td>
        </tr>
    </table>
  </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
       


</asp:Content>



