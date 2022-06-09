<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            background-color: #00FFFF;
            margin-right: 0px;
        }
    .auto-style17 {
        width: 100%;
    }
        .auto-style21 {
            background-color: #0066CC;
        }
        .auto-style22 {
            margin-left: 40px;
        }
        .auto-style23 {
            font-weight: bold;
        }
        .auto-style24 {
            height: 48px;
        }
        .auto-style25 {
            margin-left: 40px;
            height: 48px;
        }
        .auto-style26 {
            height: 24px;
        }
        .auto-style27 {
            background-color: #3333FF;
        }
        .auto-style28 {
            margin-left: 40px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
   

    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style21">
        <table class="auto-style17">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server"  Text="+" Width="67px" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="-" Width="63px" OnClick="Button2_Click" />
                </td>
                <td><strong>YEMEK LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
  
   <asp:Panel ID="Panel2" runat="server" CssClass="auto-style16">
       <asp:DataList ID="DataList1" runat="server" Width="448px" Height="171px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" CssClass="auto-style27">
           <ItemTemplate>
               <table class="auto-style17">
                   <tr>
                       <td class="auto-style18">
                           <asp:Label ID="Label1" runat="server" CssClass="auto-style20" Text='<%# Eval("YemekAd") %>'></asp:Label>
                       </td>
                       <td class="auto-style19">
                           <a href="YemekDuzenle.aspx?Yemekid=<%# Eval("Yemekid") %>"><asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/iconlar/update.png" Width="30px" /></a>
                       </td>
                       <td class="auto-style19">
                        <a href="Yemekler.aspx?Yemekid=<%# Eval("Yemekid") %>&islem=sil">   <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" /></a>
                       </td>
                   </tr>
               </table>
           </ItemTemplate>
       </asp:DataList>
        </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style21" >
        <table class="auto-style17">
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="+" Width="71px" OnClick="Button3_Click"  />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="-" Width="64px" OnClick="Button4_Click"  />
                </td>
                <td><strong>YEMEK EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style21">
        <table class="auto-style17">
            <tr>
                <td class="auto-style26"></td>
                <td class="auto-style26"></td>
            </tr>
            <tr>
                <td>YEMEK AD</td>
                <td>
                    <asp:TextBox ID="txt_ad" runat="server" Width="216px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>MALZEMELER</td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox1" runat="server" Height="90px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">YEMEK TARİFİ</td>
                <td class="auto-style25">
                    <asp:TextBox ID="TextBox2" runat="server" Height="152px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ</td>
                <td class="auto-style22">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="193px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style28"><strong>
                    <asp:Button ID="Btn_ekle" runat="server" CssClass="auto-style23" Text="EKLE" OnClick="Btn_ekle_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


