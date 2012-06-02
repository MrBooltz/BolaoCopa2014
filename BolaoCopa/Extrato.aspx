<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Extrato.aspx.cs" Inherits="BolaoCopa.Extrato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ctnConteudo" runat="server">
<div class="corpo">
<h1> Extrato de Aspostas </h1><br />
<div class="extrato">
<table class="tabela_extrato" cellspacing="0" style="border-collapse:collapse;">
	        <thead class="thead_ranking">
                <tr>
                    <td>Jogo</td>
                    <td>Aposta</td>
                    <td>Pontos</td>
                </tr>
             </thead>
            <tbody > 
                <tr class="trPar">
			        <td> África do Sul 2 X 1 México</td>
                    <td> África do Sul 2 X 1 México</td>
                    <td>10pts</td>
		        </tr>
                 <tr class="trImpar">
                    <td> Inglaterra 3 X 0 Estados Unidos</td>
                    <td> Inglaterra 2 X 1 Estados Unidos</td>
                    <td>2pts</td>
		        </tr>
                <tr class="trPar">
                    <td> Argélia 1 X 4 Eslovênia</td>
                    <td> Argélia 1 X 2 Eslovênia</td>
                    <td>5pts</td>
		        </tr>
                <tr class="trImpar">
                    <td> Holanda 2 X 2 Dinamarca</td>
                    <td> Holanda 0 X 2 Dinamarca</td>
                    <td>0pts</td>
		        </tr>
                   <tr class="trPar">
                    <td> Japão 3 X 1 Camarões</td>
                    <td> Japão 2 X 2 Camarões</td>
                    <td>0pts</td>
		        </tr>
                 </tr>
                   <tr class="trImpar">
                    <td> Argentina - X - Nigéria</td>
                    <td> Argentina 1 X 2 Nigéria</td>
                    <td>0pts</td>
		        </tr>
                 </tr>
                   <tr class="trPar">
                    <td> Alemanha - X - Austrália</td>
                    <td> Alemanha 2 X 0 Austrália</td>
                    <td>0pts</td>
		        </tr>
                </tbody>
        </table>
</div>
</div>
</asp:Content>
