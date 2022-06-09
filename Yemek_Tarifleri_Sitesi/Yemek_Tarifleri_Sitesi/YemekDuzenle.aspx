<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            background-color: #0066CC;
        }
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            margin-left: 120px;
        }
        .auto-style18 {
            text-align: left;
            margin-left: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style15">
        <table class="auto-style16">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Yemek Ad</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="234px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Malzemeler</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="68px" Width="236px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Tarif</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="158px" TextMode="MultiLine" Width="238px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Kategori</td>
                <td class="auto-style17">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="142px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style18">
                    <asp:Button ID="Button1" runat="server" Text="Güncelle" Width="86px" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

