<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="KahveDuzenle.aspx.cs" Inherits="KahveTarifleri.KahveDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-9">
            <h4>Kategori Güncelle</h4>
            <table>
                <tr>
                    <td>
                        Kahve Adı:
                       </td>
                    <td>
                          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                 <tr>
                    <td>
                        Malzemeler:
                       </td>
                    <td>
                          <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                 <tr>
                     <tr>
                    <td>
                        Tarif:
                       </td>
                    <td>
                            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                 <tr>
                    <td>
                        Kahve Resim:
                       </td>
                    <td>
                          <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                 <tr>
                    <td>
                       Kategori id:
                       </td>
                    <td>
                           <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                        </td>
                    </tr>

                  
                          
            </table>
            <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="Guncelle" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>
