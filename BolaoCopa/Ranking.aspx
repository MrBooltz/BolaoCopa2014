<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Ranking.aspx.cs" Inherits="BolaoCopa.Ranking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ctnConteudo" runat="server">
<div class="corpo">
<h1> Ranking </h1><br />
<div class="ranking">
        <table class="tabela_ranking" cellspacing="0" style="border-collapse:collapse;">
	        <thead class="thead_ranking">
                <tr>
                    <td>Nome</td>
                    <td>Apostas</td>
                    <td>Acertos</td>
                    <td>Placar Exato</td>
                    <td>Acerto de Gols</td>
                    <td>Acerto de Vitórias</td>
                    <td>Pontos</td>
                </tr>
             </thead>
            <tbody > 
                <tr class="trPar">
			        <td class="tbranking_nome">Carlos Papeis Reciclados da Silva</td>
                    <td class="tbranking_apostas" >8</td>
                    <td class="tbranking_apostas" >6</td>
                    <td class="tbranking_pe" >4</td>
                    <td class="tbranking_ag">2</td>
                    <td class="tbranking_av">0</td>
                    <td class="tbranking_pts" >50</td>
		        </tr>
                 <tr class="trImpar">
                    <td class="tbranking_nome" >Andreia Queijo Parmesão</td>
			        <td class="tbranking_apostas" >8</td>
                    <td class="tbranking_apostas" >6</td>
                    <td class="tbranking_pe" >4</td>
                    <td class="tbranking_ag">1</td>
                    <td class="tbranking_av">1</td>
                    <td class="tbranking_pts" >47</td>
		        </tr>
                <tr class="trPar">
                    <td class="tbranking_nome" >Juliano Castelo de Areia da Praia</td>
			        <td class="tbranking_apostas" >8</td>
                    <td class="tbranking_apostas" >5</td>
                    <td class="tbranking_pe" >4</td>
                    <td class="tbranking_ag">0</td>
                    <td class="tbranking_av">1</td>
                    <td class="tbranking_pts" >42</td>
		        </tr>
                <tr class="trImpar">
                    <td class="tbranking_nome" >Marcela Automóvel Quatro Portas</td>
			        <td class="tbranking_apostas" >8</td>
                    <td class="tbranking_apostas" >5</td>
                    <td class="tbranking_pe" >3</td>
                    <td class="tbranking_ag">2</td>
                    <td class="tbranking_av">0</td>
                    <td class="tbranking_pts" >35</td>
		        </tr>
                   <tr class="trPar">
                    <td class="tbranking_nome" >Matheus Limpa Vidros e Janelas</td>
			        <td class="tbranking_apostas" >8</td>
                    <td class="tbranking_apostas" >4</td>
                    <td class="tbranking_pe" >1</td>
                    <td class="tbranking_ag">2</td>
                    <td class="tbranking_av">1</td>
                    <td class="tbranking_pts" >22</td>
		        </tr>
                </tbody>
        </table>
</div>
</div>

</asp:Content>
