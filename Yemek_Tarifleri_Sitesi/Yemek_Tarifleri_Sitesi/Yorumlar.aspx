<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

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
                <td><strong>ONAYLI&nbsp; YORUM&nbsp; LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
  
   <asp:Panel ID="Panel2" runat="server" CssClass="auto-style16">
       <asp:DataList ID="DataList1" runat="server" Width="449px" Height="171px">
           <ItemTemplate>
               <table class="auto-style17">
                   <tr>
                       <td class="auto-style18">
                           <asp:Label ID="Label1" runat="server" CssClass="auto-style20" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                       </td>
                       <td class="auto-style19">
                           <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/iconlar/update.png" Width="30px" />
                       </td>
                       <td class="auto-style19">
                           <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" />
                       </td>
                   </tr>
               </table>
           </ItemTemplate>
       </asp:DataList>
        </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style21">
        <table class="auto-style17">
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server"  Text="+" Width="67px" OnClick="Button3_Click"  />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server"  Text="-" Width="63px" OnClick="Button4_Click"  />
                </td>
                <td><strong>ONAYSIZ&nbsp; YORUM&nbsp; LİSTESİ</strong></td>
            </tr>
        </table>
    </asp:Panel>
   <asp:Panel ID="Panel4" runat="server" CssClass="auto-style16">
       <asp:DataList ID="DataList2" runat="server" Width="449px" Height="171px">
           <ItemTemplate>
               <table class="auto-style17">
                   <tr>
                       <td class="auto-style18">
                           <asp:Label ID="Label2" runat="server" CssClass="auto-style20" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                       </td>
                       <td class="auto-style19">
                        <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid")%> ">  <asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/iconlar/update.png" Width="30px" />
                       </td></a>
                       <td class="auto-style19">
                           <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete.png" Width="30px" />
                       </td>
                   </tr>
               </table>
           </ItemTemplate>
       </asp:DataList>
        </asp:Panel>
</asp:Content>
