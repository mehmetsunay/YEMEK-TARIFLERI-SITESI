<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style17 {
            text-align: right;
        }
        .auto-style15 {
            width: 308px;
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style18 {
            width: 102%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style21">
        <table class="auto-style17">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server"  Text="+" Width="67px" OnClick="Button1_Click1"  />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server"  Text="-" Width="63px" OnClick="Button2_Click"/>
                </td>
                <td class="auto-style15"><strong>TARİF&nbsp; LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style21">

   <asp:DataList ID="DataList1" runat="server" Width="439px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <table class="auto-style18">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style12" Text='<%# Eval("TarifAd") %>'></asp:Label>
                    </td>
                    <td class="auto-style17">
                     <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%>">  <asp:Image ID="Image2" runat="server" Height="33px" ImageUrl="~/iconlar/tıkla.jpg" Width="83px" /></a> 
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

        </asp:Panel>
    </asp:Content>

