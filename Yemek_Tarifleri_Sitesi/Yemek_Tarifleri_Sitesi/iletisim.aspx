<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style10 {
        width: 100%;
    }
    .auto-style11 {
        margin-left: 80px;
    }
    .auto-style12 {
        text-align: right;
    }
    .auto-style13 {
        text-align: center;
        height: 50px;
    }
        .auto-style14 {
            margin-left: 80px;
            text-align: left;
        }
        .auto-style15 {
            border: 2px solid #456879;
            border-radius: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style10">
    <tr>
        <td class="auto-style13" colspan="2"><em><strong>MESAJ PANELİ</strong></em></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Ad Soyad:</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="Txt_ad" runat="server" CssClass="auto-style15" Width="265px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Mail Adresiniz:</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="Txt_Mail" runat="server" CssClass="auto-style15" Width="265px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Konu:</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="Txt_Konu" runat="server" CssClass="auto-style15" Width="263px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong>Mesaj:</strong></td>
        <td class="auto-style11">
            <asp:TextBox ID="Txt_Mesaj" runat="server" Height="62px" TextMode="MultiLine" CssClass="auto-style15" Width="264px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style14">
            <asp:Button ID="Button1" runat="server" Text="Gönder" Width="268px" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style14">
            &nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style14">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

