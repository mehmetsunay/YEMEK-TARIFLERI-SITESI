<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style16 {
            background-color: #00FFFF;
        }
    .auto-style17 {
        width: 100%;
    }
    .auto-style18 {
        text-align: left;
        width: 161px;
    }
    .auto-style19 {
        text-align: right;
    }
    .auto-style20 {
        font-size: large;
    }
        .auto-style21 {
            background-color: #0066CC;
        }
        .auto-style22 {
            margin-left: 40px;
        }
        .auto-style23 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
   

    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style21">
        <table class="auto-style17">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="+" Width="67px" />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="-" Width="63px" />
                </td>
                <td><strong>KATEGORİ LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
  
   <asp:Panel ID="Panel2" runat="server" CssClass="auto-style16">
       <asp:DataList ID="DataList1" runat="server" Width="449px" Height="171px">
           <ItemTemplate>
               <table class="auto-style17">
                   <tr>
                       <td class="auto-style18">
                           <asp:Label ID="Label1" runat="server" CssClass="auto-style20" Text='<%# Eval("KatagoriAd") %>'></asp:Label>
                       </td>
                       <td class="auto-style19">
                           <a href="KategoriDuzenle.aspx?Katagoriid=<%# Eval("Katagoriid") %>"><asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/iconlar/update.png" Width="30px" /></a>
                       </td>
                       <td class="auto-style19">
                        <a href="Kategoriler.aspx?Katagoriid=<%# Eval("Katagoriid") %>&islem=sil">   <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" /></a>
                       </td>
                   </tr>
               </table>
           </ItemTemplate>
       </asp:DataList>
        </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style21" >
        <table class="auto-style17">
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="+" Width="71px" OnClick="Button3_Click" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="-" Width="64px" OnClick="Button4_Click" />
                </td>
                <td><strong>KATEGORİ EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style21">
        <table class="auto-style17">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>KATEGORİ AD</td>
                <td>
                    <asp:TextBox ID="txt_ad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>KATEGORİ İKON</td>
                <td class="auto-style22">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style22">
                    <strong>
                    <asp:Button ID="Btn_ekle" runat="server" CssClass="auto-style23" Text="EKLE" OnClick="Btn_ekle_Click" />
                    </strong>
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

