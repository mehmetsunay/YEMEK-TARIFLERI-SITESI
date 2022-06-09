<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style10 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <p class="auto-style10">
        <strong>
        <asp:DataList ID="DataList2" runat="server" Width="444px">
            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
            </ItemTemplate>
        </asp:DataList>
        </strong>
    </p>


    <asp:Image ID="Image1" runat="server" ImageUrl="~/Resimler/s1200.jpg" Width="442px" />
</asp:Content>

