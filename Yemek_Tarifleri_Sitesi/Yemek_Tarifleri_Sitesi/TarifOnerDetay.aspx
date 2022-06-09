<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style20 {
            text-align: right;
        }
        .auto-style18 {
            margin-left: 120px;
        }
        .auto-style19 {
            margin-left: 280px;
        }
        .auto-style21 {
            margin-left: 360px;
        }
        .auto-style22 {
            text-align: right;
            color: #ffffff;
        }
        .auto-style23 {
            color: #FEFFFF;
        }
        .auto-style24 {
            text-align: right;
            color: #FEFFFF;
        }
        .auto-style25 {
            color: #ffffff;
            height: 24px;
            text-align: right;
        }
        .auto-style26 {
            margin-left: 280px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style11">
            <tr>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style24"><strong>Tarif&nbsp; Ad:</strong></td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox6" runat="server" Width="248px" OnTextChanged="TextBox6_TextChanged1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style20"><span class="auto-style23"><strong>Malzemeler:</strong></span></td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox7" runat="server" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>Yapılış:</strong></td>
                <td class="auto-style21">
                    <asp:TextBox ID="TextBox3" runat="server" Height="82px" TextMode="MultiLine" Width="256px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>Tarif Resim:</strong></td>
                <td class="auto-style19">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>Tarif Öneren:</strong></td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox4" runat="server" Width="254px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"><strong>Öneren Mail:</strong></td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox5" runat="server" Width="253px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25"><strong>Kategori:</strong></td>
                <td class="auto-style26">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="227px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style19">
                    <asp:Button ID="Button1" runat="server" Height="23px" OnClick="Button1_Click" Text="Button" Width="203px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

