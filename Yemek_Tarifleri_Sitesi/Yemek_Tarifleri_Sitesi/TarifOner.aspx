<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style9 {
            margin-left: 40px;
        }
        .auto-style10 {
            text-align: right;
        }
        .auto-style11 {
            font-weight: bold;
            margin-left: 54px;
        }
        .auto-style12 {
            text-align: right;
            font-size: smaller;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Tarif Ad:</strong></td>
            <td>
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Malzemeler:</strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Yapılış:</strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Resim:</strong></td>
            <td class="auto-style9">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Tarif Öneren:</strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtTOner" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>Mail Adresi:</strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="TxtMail" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9"><strong>
                <asp:Button ID="BtnTarifOner" runat="server" CssClass="auto-style11" Height="40px" Text="Tarif Öner " Width="150px" OnClick="BtnTarifOner_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

