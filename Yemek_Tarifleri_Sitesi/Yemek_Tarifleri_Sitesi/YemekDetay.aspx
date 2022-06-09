<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            font-size: large;
        }
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            font-size: medium;
        }
        .auto-style13 {
            font-size: x-small;
        }
        .auto-style14 {
            font-size: small;
        }
        .auto-style15 {
            height: 29px;
        }
        .auto-style16 {
            font-size: x-large;
        }
        .auto-style17 {
            background-color: #FFFFFF;
        }
        .auto-style18 {
            margin-left: 120px;
        }
        .auto-style19 {
            margin-left: 280px;
        }
        .auto-style20 {
            text-align: right;
        }
        .auto-style21 {
            margin-left: 360px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style16" Text="Label"></asp:Label>
    <br />
    </strong>
    <asp:DataList ID="DataList2" runat="server" Width="436px">
        <ItemTemplate>
            <table class="auto-style11">
                <tr>
                    <td class="auto-style15"><strong>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style10" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin;">
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style12" Text='<%# Eval("Yorumicerik") %>'></asp:Label>
                        &nbsp;<span class="auto-style14">- </span>
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style13" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: inset; border-bottom-width: thin;">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div class="auto-style17"><strong>YORUM YAPMA PANELİ</strong></div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style11">
            <tr>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Ad-Soyad</strong></td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox1" runat="server" Width="184px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Mail:</strong></td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox2" runat="server" Width="183px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><strong>Yorumunuz:</strong></td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox3" runat="server" Height="82px" TextMode="MultiLine" Width="182px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style19">
                    <asp:Button ID="Button1" runat="server" Height="23px" OnClick="Button1_Click" Text="Button" Width="129px" />
                </td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>

