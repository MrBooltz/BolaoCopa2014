<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="BolaoCopa.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ctnLogoBolao" runat="server">
    <asp:HyperLink ID="hplHome" runat="server" 
        ImageUrl="~/Imagens/logoBolaoMenu.png" NavigateUrl="~/Principal.aspx">HyperLink</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ctnLogout" runat="server">
    <div id="imgUsuario">
        <asp:Image ID="imUsuario" runat="server" Height="24px" 
            ImageUrl="~/Imagens/inputLogin.png" Width="22px" />
    </div>

    <div id="usuarioLogado">
        <asp:Label ID="lbUsuarioLogado" runat="server" CssClass="labelPequeno" 
            Text="usuario@dominio.com.br"></asp:Label>
        &nbsp; | &nbsp;
        <asp:HyperLink ID="hplLogout" runat="server" CssClass="hyperlinkPequeno" 
            NavigateUrl="~/Default.aspx">Logout</asp:HyperLink>
    </div>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ctnConteudo" runat="server">

    <div id="imgCopa2014Principal">
    
        <asp:Image ID="imCopaMundo" runat="server" Height="169px" 
            ImageUrl="~/Imagens/logoCopaEntrada.png" Width="120px" />
    
    
    </div>
    
    
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ctnBarraMenu" runat="server">
    <asp:HyperLink ID="hplPrincipal" runat="server" CssClass="itemMenu" 
        Font-Bold="True" NavigateUrl="~/Principal.aspx">Principal</asp:HyperLink>
    &nbsp;&nbsp;&nbsp; <asp:HyperLink ID="hplApostar" runat="server" 
        CssClass="itemMenu" Font-Bold="True">Apostar</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="hplCadastros" runat="server" 
        CssClass="itemMenu" Font-Bold="True">Cadastros</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="hplRanking" runat="server" 
        CssClass="itemMenu" Font-Bold="True">Ranking</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="hplExtrato" runat="server" 
        CssClass="itemMenu" Font-Bold="True">Extratos</asp:HyperLink>
    <br />
    <br />
</asp:Content>
