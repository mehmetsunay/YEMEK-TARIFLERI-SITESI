<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style10 {
            width: 100%;
        }
        .auto-style13 {
            height: 39px;
            background-color: #FFFFFF;
        }
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style14 {
            text-align: left;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" Width="439px">
        <ItemTemplate>
            <table class="auto-style10">
                <tr>
                    <td class="auto-style13"><strong><a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>">
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style11" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </a></strong></td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong><asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>Yemek Tarifi:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>Eklenme Tarihi:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        -Puan:<asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

