<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master"  AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">





    <style type="text/css">
        .auto-style9 {
            margin-left: 40px;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            height: 27px;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
    <asp:DataList ID="DataList2" runat="server" Width="446px">
        <ItemTemplate>
            <table class="auto-style11">
                <tr>
                    <td class="auto-style12"><strong>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("GununYemegiAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image2" runat="server" Height="169px" ImageUrl="~/Resimler/mucver-tarifi-adim-1.jpg" Width="415px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>Malzemeler: </strong> <asp:Label ID="Label8" runat="server" Text='<%# Eval("GununYemegiMalzeme") %>'></asp:Label>
                       
                    </td>
                </tr>
                <tr>
                    <td><strong>Tarif:</strong><asp:Label ID="Label5" runat="server" Text='<%# Eval("GununYemegiTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Puan:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("GununYemegiPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Tarih:</strong><asp:Label ID="Label7" runat="server" Text='<%# Eval("GununYemegiTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    
    
</asp:Content>

