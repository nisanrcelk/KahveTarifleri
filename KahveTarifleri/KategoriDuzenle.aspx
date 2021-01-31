<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="KahveTarifleri.KategoriDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-9">
            <h4>Kategori Güncelle</h4>
            <table>
                <tr>
                    <td>
                        Kategori Adı:
                    </td>
                      <td>
                          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                  
                </tr>
            </table>
            <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>
