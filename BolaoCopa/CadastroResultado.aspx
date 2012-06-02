<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="CadastroResultado.aspx.cs" Inherits="BolaoCopa.CadastroResultado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ctnConteudo" runat="server">
    <div class="corpo">
<h1> Cadastro de Resultados </h1><br />
<div class="resultados">
<label>Partida:</label>
    <asp:DropDownList ID="DropDownList1" runat="server"
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        ontextchanged="DropDownList1_TextChanged" AutoPostBack="true">
        <asp:ListItem Value="-1">Selecione</asp:ListItem>
        <asp:ListItem Value="0">África do Sul X México</asp:ListItem>
         <asp:ListItem Value="1">Uruguai X França</asp:ListItem>
         <asp:ListItem Value="2">Argentina X Nigéria</asp:ListItem>
    </asp:DropDownList>
    <br />
    <br />
 <asp:Panel ID="Panel1" runat="server" Visible="false">
<table class="tabela_jogo" cellspacing="0" style="border-collapse:collapse;">
	<tbody > 
        <tr>
			<td class="data">
                <asp:Label ID="lblData" runat="server" Text=""></asp:Label></td>

            <td class="mandante">
               <asp:Label ID="lblMandante" runat="server" Text=""></asp:Label> </td>
            
            <td class="escudo_mandante">
                <asp:Image ID="imgMandante" runat="server" ImageUrl="" /></td>

            <td class="placar_mandante" style="white-space:nowrap;">
                <asp:TextBox ID="txtMandante" runat="server" Width="20px"></asp:TextBox> </td>

            <td class="versus" style="white-space:nowrap;">X</td>

            <td class="placar_visitante" tyle="white-space:nowrap;">
                <asp:TextBox ID="txtVisitante" runat="server" Width="20px"></asp:TextBox></td>

            <td class="escudo_visitante">
                <asp:Image ID="imgVisitante" runat="server" ImageUrl="" /></td>

            <td class="visitante">
                <asp:Label ID="lblVisitante" runat="server" Text=""></asp:Label> </td>
		</tr>
    </tbody>
</table>
</asp:Panel>
<br />

<div class="buttons">
    <asp:Button ID="Button1" runat="server" Text="Salvar" CssClass="button" />
</div>
</div>
</div>
</asp:Content>
