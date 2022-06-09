<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style15">
        <tr>
            <td class="auto-style12">Ad Soyad:</td>
            <td>
                <asp:TextBox ID="Txt_Ad" runat="server" Width="217px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Mail Adresi</td>
            <td>
                <asp:TextBox ID="Txt_Mail" runat="server" Width="216px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">İçerik:</td>
            <td>
                <asp:TextBox ID="Txt_icerik" runat="server" Height="55px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Yemek:</td>
            <td>
                <asp:TextBox ID="Txt_Yemek" runat="server" Width="215px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td>
                <asp:Button ID="btn_Onay" runat="server" Text="Onayla" Width="112px" OnClick="btn_Onay_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

