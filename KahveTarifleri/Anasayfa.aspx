<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="KahveTarifleri.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .list-group-item {
            color: #F0CA95;
            background-color: #563617;
        }

            .list-group-item:hover {
                background-color: black;
                font-size: 17px;
                color: #F0CA95;
            }

        .card {
            background-color: #563617;
            color: #F0CA95;
        }

        .btn {
            background-color: #F0CA95;
        }

            .btn:hover {
                background-color: black;
                font-size: 20px;
                color: #F0CA95;
            }
    </style>
    <div class="container">

        <div class="row">
            <div class="col-md-12">
                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="resimler/sl1.jpg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="resimler/sl2.jpg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="resimler/sl4.jpg" class="d-block w-100" alt="...">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </a>
                </div>
            </div>
        </div>
        <div style="height: 15px;"></div>


        <div class="row text-center">
            <div class="col-md-3">

                <div class="bg-light border-right mr-3" id="sidebar-wrapper">

                    <div class="list-group list-group-flush ">
                        <a href="#" class="list-group-item">Kategoriler</a>
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>

                                <a class="list-group-item" href="Kategori.aspx?Kategoriid=<%#Eval("Kategoriid")%> ">
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Kategoriad") %>'>   </asp:Label>
                                </a>

                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>
            </div>
            <div class="col-md-1">
            </div>




            <div class="col-md-4 ">
                <asp:DataList ID="DataList3" runat="server">
                    <ItemTemplate>

                        <div class="card ">

                            <asp:Image class="card-img-top" ID="Image1" runat="server" ImageUrl='<%# Eval("KahveResim") %>' />

                            <div class="card-body">


                                <h5 class="card-title">
                                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("Kahvead") %>'>   </asp:Label></h5>
                                <a href="kahveDetay.aspx?kahveid=<%# Eval("Kahveid") %>" class="btn">Tarife Git
                   
                                </a>
                    </ItemTemplate>
                </asp:DataList>


            </div>



            <div class="col-md-4 ">
                <asp:DataList ID="DataList4" runat="server">
                    <ItemTemplate>
                        <div class="card">

                            <asp:Image class="card-img-top" ID="Image2" runat="server" ImageUrl='<%# Eval("KahveResim") %>' />
                            <div class="card-body">
                                <h5 class="card-title">
                                    <asp:Label ID="Label6" runat="server" Text='<%#Eval("Kahvead") %>'>   </asp:Label></h5>

                                <a href="kahveDetay.aspx?kahveid=<%# Eval("Kahveid") %>" class="btn">Tarife Git</a>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </div>





        <div class="row text-center">
            <div class="col-md-3">
                <asp:DataList ID="DataList5" runat="server">
                    <ItemTemplate>
                        <div class="card mt-5">
                            <div class="card h-100">
                                <asp:Image class="card-img-top" ID="Image3" runat="server" ImageUrl='<%# Eval("KahveResim") %>' />
                                <div class="card-body">
                                    <h5 class="card-title">
                                        <asp:Label ID="Label7" runat="server" Text='<%#Eval("Kahvead") %>'>  </asp:Label>
                                    </h5>

                                    <a href="kahveDetay.aspx?kahveid=<%# Eval("Kahveid") %>" class="btn">Tarife Git</a>
                    </ItemTemplate>
                </asp:DataList>
            </div>


            <div class="col-md-3">
                <asp:DataList ID="DataList6" runat="server">
                    <ItemTemplate>
                        <div class="card mt-5">
                            <div class="card h-100">
                                <asp:Image class="card-img-top" ID="Image4" runat="server" ImageUrl='<%# Eval("KahveResim") %>' />
                                <div class="card-body">
                                    <h5 class="card-title">
                                        <asp:Label ID="Label8" runat="server" Text='<%#Eval("Kahvead") %>'>  </asp:Label>
                                    </h5>

                                    <a href="kahveDetay.aspx?kahveid=<%# Eval("Kahveid") %>" class="btn">Tarife Git</a>
                    </ItemTemplate>
                </asp:DataList>
            </div>

            <div class="col-md-3">
                <asp:DataList ID="DataList7" runat="server">
                    <ItemTemplate>
                        <div class="card mt-5">
                            <div class="card h-100">
                                <asp:Image class="card-img-top" ID="Image5" runat="server" ImageUrl='<%# Eval("KahveResim") %>' />
                                <div class="card-body">
                                    <h5 class="card-title">
                                        <asp:Label ID="Label9" runat="server" Text='<%#Eval("Kahvead") %>'>  </asp:Label>
                                    </h5>

                                    <a href="kahveDetay.aspx?kahveid=<%# Eval("Kahveid") %>" class="btn">Tarife Git</a>
                    </ItemTemplate>
                </asp:DataList>
            </div>

            <div class="col-md-3">
                <asp:DataList ID="DataList8" runat="server">
                    <ItemTemplate>
                        <div class="card mt-5">
                            <div class="card h-100">
                                <asp:Image class="card-img-top" ID="Image6" runat="server" ImageUrl='<%# Eval("KahveResim") %>' />
                                <div class="card-body">
                                    <h5 class="card-title">
                                        <asp:Label ID="Label10" runat="server" Text='<%#Eval("Kahvead") %>'>  </asp:Label>
                                    </h5>

                                    <a href="kahveDetay.aspx?kahveid=<%# Eval("Kahveid") %>" class="btn">Tarife Git</a>
                    </ItemTemplate>
                </asp:DataList>
            </div>


            <div class="row">

                <div class="col-md-3">
                    <asp:DataList ID="DataList9" runat="server">
                        <ItemTemplate>
                            <div class="card mt-5">
                                <div class="card h-100">
                                    <asp:Image class="card-img-top" ID="Image7" runat="server" ImageUrl='<%# Eval("KahveResim") %>' />
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <asp:Label ID="Label11" runat="server" Text='<%#Eval("Kahvead") %>'>  </asp:Label>
                                        </h5>

                                        <a href="kahveDetay.aspx?kahveid=<%# Eval("Kahveid") %>" class="btn">Tarife Git</a>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <div class="col-md-3">
                    <asp:DataList ID="DataList10" runat="server">
                        <ItemTemplate>
                            <div class="card mt-5">
                                <div class="card h-100">
                                    <asp:Image class="card-img-top" ID="Image8" runat="server" ImageUrl='<%# Eval("KahveResim") %>' />
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <asp:Label ID="Label12" runat="server" Text='<%#Eval("Kahvead") %>'>  </asp:Label>
                                        </h5>

                                        <a href="kahveDetay.aspx?kahveid=<%# Eval("Kahveid") %>" class="btn">Tarife Git</a>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <div class="col-md-3">
                    <asp:DataList ID="DataList11" runat="server">
                        <ItemTemplate>
                            <div class="card mt-5">
                                <div class="card h-100">
                                    <asp:Image class="card-img-top" ID="Image9" runat="server" ImageUrl='<%# Eval("KahveResim") %>' />
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <asp:Label ID="Label13" runat="server" Text='<%#Eval("Kahvead") %>'>  </asp:Label>
                                        </h5>

                                        <a href="kahveDetay.aspx?kahveid=<%# Eval("Kahveid") %>" class="btn">Tarife Git</a>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
                <div class="col-md-3">
                    <asp:DataList ID="DataList12" runat="server">
                        <ItemTemplate>
                            <div class="card mt-5">
                                <div class="card h-100">
                                    <asp:Image class="card-img-top" ID="Image10" runat="server" ImageUrl='<%# Eval("KahveResim") %>' />
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <asp:Label ID="Label14" runat="server" Text='<%#Eval("Kahvead") %>'>  </asp:Label>
                                        </h5>

                                        <a href="kahveDetay.aspx?kahveid=<%# Eval("Kahveid") %>" class="btn">Tarife Git</a>
                        </ItemTemplate>
                    </asp:DataList>

                </div>


                <div style="height: 15px;"></div>

            </div>
</asp:Content>
