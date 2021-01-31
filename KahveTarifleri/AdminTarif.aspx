<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="AdminTarif.aspx.cs" Inherits="KahveTarifleri.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h5>Onaysız Tarif Listesi</h5>
    </div>
    <asp:Panel ID="Panel1" runat="server">
      <asp:DataList ID="DataList1" runat="server">
          <ItemTemplate>
    <table class="auto-style4">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Tarifad") %>'></asp:Label>
            </td>
            <td class="auto-style6">
                <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"> <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/resimler/indir (1).png" Width="30px" /></a>
            </td>
            
        </tr>
    </table>
  </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    <div>
        <h5>Onaylı Tarif Listesi</h5>
    </div>
    <asp:Panel ID="Panel2" runat="server">
      <asp:DataList ID="DataList2" runat="server">
          <ItemTemplate>
    <table class="auto-style4">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Tarifad") %>'></asp:Label>
            </td>
            <td class="auto-style6">
                <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>"> <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/resimler/ref.png" Width="30px" /></a>
            </td>
            
        </tr>
    </table>
  </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
</asp:Content>
