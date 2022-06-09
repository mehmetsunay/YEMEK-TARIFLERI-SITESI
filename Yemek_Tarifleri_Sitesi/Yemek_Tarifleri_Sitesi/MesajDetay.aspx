<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="MesajDetay.aspx.cs" Inherits="MesajDetay" %>

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
            <td class="auto-style12">Mesaj Gönderen</td>
            <td>
                <asp:TextBox ID="txt_gon" runat="server" Width="242px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Başlık</td>
            <td>
                <asp:TextBox ID="txt_bas" runat="server" Width="244px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Mail Adresi</td>
            <td>
                <asp:TextBox ID="txt_mail" runat="server" Width="245px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">İçerik</td>
            <td>
                <asp:TextBox ID="txt_icerik" runat="server" Height="170px" TextMode="MultiLine" Width="248px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

