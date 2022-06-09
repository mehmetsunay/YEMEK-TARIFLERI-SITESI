<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 308px;
            color: #FFFFFF;
            text-align: center;
        }
        .auto-style16 {
            width: 100%;
        }
        .auto-style17 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style21">
        <table class="auto-style17">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server"  Text="+" Width="67px" OnClick="Button1_Click" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server"  Text="-" Width="63px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style15"><strong>ONAYLI&nbsp; MESAJ LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style16">
        <asp:DataList ID="DataList1" runat="server" Width="435px">
            <ItemTemplate>
                <table class="auto-style16">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style17">
                        
                      <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid")%>" ><asp:Image ID="Image4" runat="server" Height="50px" ImageUrl="~/iconlar/indir.jpg" Width="71px" /> </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>



        
        </asp:Panel>

       

</asp:Content>

