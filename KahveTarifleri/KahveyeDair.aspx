<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KahveyeDair.aspx.cs" Inherits="KahveTarifleri.KahveyeDair" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        img{
            border-radius:7px;
            margin-bottom:15px;
        }
        p,h6{
            font-size:20px;
            color:#A27037;

        }
        #parag{
            border:solid;
            border-radius:7px;
            padding:15px;
            margin-bottom:15px;
        }

    </style>
    <div class="container">
        <div class="row"> 
            <div class="col-md-4">
                
                <img src="resimler/tarih.jpg" />
                <br />
                <img src="resimler/trh.jpg" />
                <br />
                <img src="resimler/trh2.jpg" />
                <br />
                <img src="resimler/trh3.jpg" />
            </div>
            <div class="col-md-8" id="parag">
                <h6>Geçmişten Bugüne Kahve</h6>
                <p>
                    Kahvenin tarihçesi, M.S. 850 yılına dayanır. Her şey Kaldi adında, Etiyopyalı bir sığırtmacın, güttüğü keçilerin bir meyveyi yedikten sonra canlanmalarını fark etmesiyle başlamış. Kendisi de bu meyveyi denemeye karar vermiş keçi çobanı ve yedikten sonra duyduğu güç ve mutluluk çok hoşuna gitmiş.
                </p>
                <br />
                <p>
                    Daha sonra keşişler denemiş bu gizemli meyveyi; ancak acı tadını beğenmediklerinden hepsini ateşe atmışlar. Kısa süre sonra lezzetli aroma burun deliklerine dolunca keşişler çok meraklanmışlar ve kavrulmuş meyvelerden bir içecek demlemişler. Öylesine güzelmiş ki ortaya çıkan içecek, bunu Allah’ın bir hediyesi olarak görmüşler; çünkü bütün gece ayık kalmışlar kahveyi içtikten sonra. Böylece kahve tohumunun ünü, kısa süre içinde bölgede yayılmış. M.S. 1000 yıllarında kahve Yemen’de üretilmeye başlanmış.
                </p>
                <br />
                <p>
                    Osmanlı İmparatorluğu Yemen’e doğru genişledikçe, Osmanlılar kahveyle tanışmışlar. 1517 yılında Kanuni Sultan Süleyman’ın Yemen Valisi olan Özdemir Paşa, lezzetine hayran kaldığı kahveyi İstanbul’a getirmiş ve sarayı kahveyle tanıştırmış. Türk kahvesini, sarayın görkemli salonlarında, kırk kişilik kadrolu kahveci ustaları sultana servis etmeye başlamış. Haremde cariyelere doğru kahve pişirme dersleri verilmiş.
                </p>
                <br />
                <p>
                    Kahvenin yolculuğunda bir sonraki adım, Venedikli tacirlerin 1615 yılında, ilk kahve tohumlarını İstanbul’dan Venedik’e götürmeleriyle gerçekleşmiş. Böylelikle İtalyanlar’ın asla vazgeçemedikleri kahve tutkuları başlamış. Bugün İtalya’da günde otuz sekiz milyon fincan kahve tüketildiği söylenmektedir.
                </p>
                <br />
                <p>
                    1683’teki Viyana kuşatması sırasında, Osmanlılar arkalarında çuvallar dolusu yeşil kahve tohumu bırakmışlar. Viyanalılar ilk başlarda bunun deve yemi olduğunu düşünmüşler; ama kuşatma boyunca Türkler’i izleyen gizli ajanlar, bu tohumların gerçek öyküsünü bildikleri için, kısa sürede “Türk içkisi” içilmeye başlanmış. Girişimci bir Polonyalı bunlarla şehirdeki ilk kahvehaneyi açmış.

                </p>
        

            </div>


        </div>
    </div>



</asp:Content>
