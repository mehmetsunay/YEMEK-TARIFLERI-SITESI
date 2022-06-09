<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KategoriDuzenle.aspx.cs" Inherits="KategoriAdminDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            height: 30px;
            margin-left: 80px;
        }
        .auto-style17 {
            margin-left: 120px;
        }
        .auto-style18 {
            background-color: #3366FF;
        }
        .auto-style19 {
            background-color: #0066FF;
        }
        .auto-style20 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style19">
        <table class="auto-style15">
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style18">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14"><strong><span class="auto-style18">KATEGORİ AD</span></strong></td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong><span class="auto-style18">ADET</span></strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong><span class="auto-style18">RESİM</span></strong></td>
                <td class="auto-style17">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style17"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Text="GÜNCELLE" Width="131px" OnClick="Button2_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

