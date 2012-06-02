<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.Master" AutoEventWireup="true" CodeBehind="ErroLogin.aspx.cs" Inherits="BolaoCopa.ErroLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link rel="Stylesheet" href="Styles/estilo.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ctnLogoBolao" runat="server">
    <asp:Image ID="imBolao" runat="server" ImageUrl="~/Imagens/logoBolaoMenu.png" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ctnLogout" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ctnConteudo" runat="server">
    <asp:Panel ID="pnTexto" runat="server" Left="80px" Height="131px" Width="996px">
        <br />
        &nbsp;
        <asp:Label ID="lbAcessoNegado" runat="server" Text=" ACESSO NEGADO !!!" 
            CssClass="labelCadastro" Font-Bold="True" ForeColor="Red"></asp:Label>
        <br />
        <br />
        &nbsp;
        <asp:Label ID="lbExplicacaoAcessoNegado" runat="server" 
            CssClass="labelCadastro" 
            Text="Esse recurso não pode ser acessado diretamente."></asp:Label>
        <br />
        <br />
        &nbsp;
        <asp:Label ID="lbCliqueAqui" runat="server" CssClass="labelCadastro" 
            Text="Para retornar à tela inicial da aplicação, "></asp:Label>
        <asp:HyperLink ID="hplCliqueAqui" runat="server" CssClass="hyperlink" 
            NavigateUrl="~/Default.aspx">clique aqui.</asp:HyperLink>
    </asp:Panel>
</asp:Content>
