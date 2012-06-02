<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Aposta.aspx.cs" Inherits="BolaoCopa.Aposta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ctnConteudo" runat="server"> 
    <div class="corpo">
<form>
<h1> Jogos da 1ª Rodada </h1>
<div class="ladoA">
    <h2> GRUPO # A</h2>
        <div class="tabela_resultados">
        <table class="tabela_jogo" cellspacing="0" style="border-collapse:collapse;">
	        <tbody > 
                <tr>
			        <td class="data">11/06 - 15h30</td>
                    <td class="mandante" >África do Sul</td>
                    <td class="escudo_mandante" ><img  src="./imagens/selecoes/africadosul.gif" alt="África do Sul" title="Bandeira - África do Sul"></td>
                    <td class="placar_mandante" style="white-space:nowrap;">
                        <asp:TextBox ID="TextBox1" runat="server" Width="34px"></asp:TextBox>
                    </td>
                    <td class="versus" style="white-space:nowrap;">X</td>
                    <td class="placar_visitante" tyle="white-space:nowrap;">
                        <asp:TextBox ID="TextBox2" runat="server" Width="34px"></asp:TextBox>
                    </td>
                    <td class="escudo_visitante"><img src="./imagens/selecoes/mexico.gif"  alt="México" title="Bandeira - México"></td>
                    <td class="visitante">México</a></td>
		        </tr>
                 <tr>
			        <td class="data">11/06 - 18h00</td>
                    <td class="mandante">Uruguai</td>
                    <td class="escudo_mandante"><img  src="./imagens/selecoes/uruguai.gif" alt="Uruguai" title="Bandeira - Uruguai"></td>
                    <td class="placar_mandante" style="white-space:nowrap;">
                        <asp:TextBox ID="TextBox25" runat="server" Width="34px"></asp:TextBox>
                    </td>
                    <td class="versus" style="white-space:nowrap;">X</td>
                    <td class="placar_visitante" tyle="white-space:nowrap;">
                        <asp:TextBox ID="TextBox26" runat="server" Width="34px"></asp:TextBox>
                    </td>
                    <td class="escudo_visitante"><img src="./imagens/selecoes/franca.gif" alt="França" title="Bandeira - França"></td>
                    <td class="visitante">França</a></td>
		        </tr>
                </tbody>
        </table>
</div>
<br />
<h2> GRUPO # C</h2>
<div class="tabela_resultados2">
<table class="tabela_jogo2" cellspacing="0" style="border-collapse:collapse;">
	<tbody > 
         <tr>
			<td class="data">12/06 - 21h30</td>
            <td class="mandante">Inglaterra</td>
            <td class="escudo_mandante"><img  src="./imagens/selecoes/inglaterra.gif" alt="Inglaterra" title="Bandeira - Inglaterra"></td>
            <td class="placar_mandante" style="white-space:nowrap;">
                <asp:TextBox ID="TextBox5" runat="server" Width="34px"></asp:TextBox>
            </td>
            <td class="versus" style="white-space:nowrap;">X</td>
            <td class="placar_visitante" tyle="white-space:nowrap;">
                <asp:TextBox ID="TextBox6" runat="server" Width="34px"></asp:TextBox>
            </td>
            <td class="escudo_visitante"><img  src="./imagens/selecoes/eua.gif" alt="Estados Unidos" title="Bandeira - Estados Unidos"></td>
            <td class="visitante">Estados Unidos</a></td>
		</tr>
        <tr>
			<td class="data">13/06 - 15h30</td>
            <td class="mandante">Argélia</td>
            <td class="escudo_mandante"><img  src="./imagens/selecoes/argelia.gif" alt="Argélia" title="Bandeira - Argélia"></td>
            <td class="placar_mandante" style="white-space:nowrap;">
                <asp:TextBox ID="TextBox7" runat="server" Width="34px"></asp:TextBox>
            </td>
            <td class="versus" style="white-space:nowrap;">X</td>
            <td class="placar_visitante" tyle="white-space:nowrap;">
                <asp:TextBox ID="TextBox8" runat="server" Width="34px"></asp:TextBox>
            </td>
            <td class="escudo_visitante"><img  src="./imagens/selecoes/eslovenia.gif" alt="Eslovênia" title="Bandeira - Eslovênia"></td>
            <td class="visitante">Eslovênia</a></td>
		</tr>
   </tbody>
</table>
</div>
<br />

<h2> GRUPO # E</h2>
<div class="tabela_resultados2">
<table class="tabela_jogo2" cellspacing="0" style="border-collapse:collapse;">
	<tbody > 
         <tr>
			<td class="data">14/06 - 15h30</td>
            <td class="mandante">Holanda</td>
            <td class="escudo_mandante"><img  src="./imagens/selecoes/holanda.gif" alt="Holanda" title="Bandeira - Holanda"></td>
            <td class="placar_mandante" style="white-space:nowrap;">
                <asp:TextBox ID="TextBox17" runat="server" Width="34px"></asp:TextBox>
            </td>
            <td class="versus" style="white-space:nowrap;">X</td>
            <td class="placar_visitante" tyle="white-space:nowrap;">
                <asp:TextBox ID="TextBox18" runat="server" Width="34px"></asp:TextBox>
            </td>
            <td class="escudo_visitante"><img  src="./imagens/selecoes/dinamarca.gif" alt="Dinamarca" title="Bandeira - Dinamarca"></td>
            <td class="visitante">Dinamarca</a></td>
		</tr>
        <tr>
			<td class="data">14/06 - 18h00</td>
            <td class="mandante">Japão</td>
            <td class="escudo_mandante"><img  src="./imagens/selecoes/japao.gif" alt="Japão" title="Bandeira - Japão"></td>
            <td class="placar_mandante" style="white-space:nowrap;">
                <asp:TextBox ID="TextBox19" runat="server" Width="34px"></asp:TextBox>
            </td>
            <td class="versus" style="white-space:nowrap;">X</td>
            <td class="placar_visitante" tyle="white-space:nowrap;">
                <asp:TextBox ID="TextBox20" runat="server" Width="34px"></asp:TextBox>
            </td>
            <td class="escudo_visitante"><img  src="./imagens/selecoes/camaroes.gif" alt="Camarões" title="Bandeira - Camarões"></td>
            <td class="visitante">Camarões</a></td>
		</tr>
   </tbody>
</table>
</div>
<br />
<h2> GRUPO # G</h2>
<div class="tabela_resultados2">
<table class="tabela_jogo2" cellspacing="0" style="border-collapse:collapse;">
	<tbody > 
         <tr>
			<td class="data">15/06 - 18h30</td>
            <td class="mandante">Costa do Marfim</td>
            <td class="escudo_mandante"><img  src="./imagens/selecoes/costa-do-marfim.gif" alt="Costa do Marfim" title="Bandeira - Costa do Marfim"></td>
            <td class="placar_mandante" style="white-space:nowrap;">
                <asp:TextBox ID="TextBox21" runat="server" Width="34px"></asp:TextBox>
            </td>
            <td class="versus" style="white-space:nowrap;">X</td>
            <td class="placar_visitante" tyle="white-space:nowrap;">
                <asp:TextBox ID="TextBox22" runat="server" Width="34px"></asp:TextBox>
            </td>
            <td class="escudo_visitante"><img  src="./imagens/selecoes/portugal.gif" alt="Portugal" title="Bandeira - Portugal"></td>
            <td class="visitante">Portugal</a></td>
		</tr>
        <tr>
			<td class="data">15/06 - 21h30</td>
            <td class="mandante">Brasil</td>
            <td class="escudo_mandante"><img  src="./imagens/selecoes/brasil.gif" alt="Brasil" title="Bandeira - Brasil"></td>
            <td class="placar_mandante" style="white-space:nowrap;">
                <asp:TextBox ID="TextBox23" runat="server" Width="34px"></asp:TextBox>
            </td>
            <td class="versus" style="white-space:nowrap;">X</td>
            <td class="placar_visitante" tyle="white-space:nowrap;">
                <asp:TextBox ID="TextBox24" runat="server" Width="34px"></asp:TextBox>
            </td>
            <td class="escudo_visitante"><img  src="./imagens/selecoes/coreia-do-norte.gif" alt="Coreia do Norte" title="Bandeira - Coreia do Norte"></td>
            <td class="visitante">Coreia do Norte</a></td>
		</tr>
   </tbody>
</table>
</div>
</div>


<div class="ladoB">
<h2> GRUPO # B</h2>
        <div class="tabela_resultados3">
        <table class="tabela_jogo3" cellspacing="0" style="border-collapse:collapse;">
	        <tbody > 
                 <tr>
			        <td class="data">12/06 - 15h30</td>
                    <td class="mandante">Argentina</td>
                    <td class="escudo_mandante"><img  src="./imagens/selecoes/argentina.gif" alt="Argentina" title="Bandeira - Argentina"></td>
                    <td class="placar_mandante" style="white-space:nowrap;">
                        <asp:TextBox ID="TextBox27" runat="server" Width="34px"></asp:TextBox>
                    </td>
                    <td class="versus" style="white-space:nowrap;">X</td>
                    <td class="placar_visitante" tyle="white-space:nowrap;">
                        <asp:TextBox ID="TextBox28" runat="server" Width="34px"></asp:TextBox>
                    </td>
                    <td class="escudo_visitante"><img  src="./imagens/selecoes/nigeria.gif" alt="Nigéria" title="Bandeira - Nigéria"></td>
                    <td class="visitante">Nigéria</a></td>
		        </tr>
                 <tr>
			        <td class="data">12/06 - 18h00</td>
                    <td class="mandante">Coreia do Sul</td>
                    <td class="escudo_mandante"><img  src="./imagens/selecoes/coreia-do-sul.gif" alt="Coreia do Sul" title="Bandeira - Coreia do Sul"></td>
                    <td class="placar_mandante" style="white-space:nowrap;">
                        <asp:TextBox ID="TextBox3" runat="server" Width="34px"></asp:TextBox>
                    </td>
                    <td class="versus" style="white-space:nowrap;">X</td>
                    <td class="placar_visitante" tyle="white-space:nowrap;">
                        <asp:TextBox ID="TextBox4" runat="server" Width="34px"></asp:TextBox>
                    </td>
                    <td class="escudo_visitante"><img  src="./imagens/selecoes/grecia.gif" alt="Grécia" title="Bandeira - Grécia"></td>
                    <td class="visitante">Grécia</a></td>
		        </tr>
            </tbody>
        </table>
        </div>
<br />
        <h2> GRUPO # D</h2>
        <div class="tabela_resultados4">
        <table class="tabela_jogo4" cellspacing="0" style="border-collapse:collapse;">
        <tbody > 
                <tr>
		        <td class="data">13/06 - 18h00</td>
                <td class="mandante">Alemanha</td>
                <td class="escudo_mandante"><img  src="./imagens/selecoes/alemanha.gif" alt="Alemanha" title="Bandeira - Alemanha"></td>
                <td class="placar_mandante" style="white-space:nowrap;">
                    <asp:TextBox ID="TextBox9" runat="server" Width="34px"></asp:TextBox>
                </td>
                <td class="versus" style="white-space:nowrap;">X</td>
                <td class="placar_visitante" tyle="white-space:nowrap;">
                    <asp:TextBox ID="TextBox10" runat="server" Width="34px"></asp:TextBox>
                </td>
                <td class="escudo_visitante"><img  src="./imagens/selecoes/australia.gif" alt="Australia" title="Bandeira - Australia"></td>
                <td class="visitante">Austrália</a></td>
	        </tr>
                <tr>
		        <td class="data">13/06 - 21h30</td>
                <td class="mandante">Servia</td>
                <td class="escudo_mandante"><img  src="./imagens/selecoes/servia.gif" alt="Servia" title="Bandeira - Servia"></td>
                <td class="placar_mandante" style="white-space:nowrap;">
                    <asp:TextBox ID="TextBox11" runat="server" Width="34px"></asp:TextBox>
                </td>
                <td class="versus" style="white-space:nowrap;">X</td>
                <td class="placar_visitante" tyle="white-space:nowrap;">
                    <asp:TextBox ID="TextBox12" runat="server" Width="34px"></asp:TextBox>
                </td>
                <td class="escudo_visitante"><img  src="./imagens/selecoes/gana.gif" alt="Gana" title="Bandeira - Gana"></td>
                <td class="visitante">Gana</a></td>
	        </tr>
        </tbody>
        </table>
        </div>
        <br />
        <h2> GRUPO # F</h2>
        <div class="tabela_resultados2">
        <table class="tabela_jogo2" cellspacing="0" style="border-collapse:collapse;">
	        <tbody > 
                 <tr>
			        <td class="data">14/06 - 21h30</td>
                    <td class="mandante">Itália</td>
                    <td class="escudo_mandante"><img  src="./imagens/selecoes/italia.gif" alt="Itália" title="Bandeira - Itália"></td>
                    <td class="placar_mandante" style="white-space:nowrap;">
                        <asp:TextBox ID="TextBox29" runat="server" Width="34px"></asp:TextBox>
                    </td>
                    <td class="versus" style="white-space:nowrap;">X</td>
                    <td class="placar_visitante" tyle="white-space:nowrap;">
                        <asp:TextBox ID="TextBox30" runat="server" Width="34px"></asp:TextBox>
                    </td>
                    <td class="escudo_visitante"><img  src="./imagens/selecoes/paraguai.gif" alt="Paraguai" title="Bandeira - Paraguai"></td>
                    <td class="visitante">Paraguai</a></td>
		        </tr>
                <tr>
			        <td class="data">15/06 - 15h30</td>
                    <td class="mandante">Nova Zelândia</td>
                    <td class="escudo_mandante"><img  src="./imagens/selecoes/nova-zelandia.gif" alt="Nova Zelândia" title="Bandeira - Nova Zelândia"></td>
                    <td class="placar_mandante" style="white-space:nowrap;">
                        <asp:TextBox ID="TextBox31" runat="server" Width="34px"></asp:TextBox>
                    </td>
                    <td class="versus" style="white-space:nowrap;">X</td>
                    <td class="placar_visitante" tyle="white-space:nowrap;">
                        <asp:TextBox ID="TextBox32" runat="server" Width="34px"></asp:TextBox>
                    </td>
                    <td class="escudo_visitante"><img  src="./imagens/selecoes/eslovaquia.gif" alt="Eslováquia" title="Bandeira - Eslováquia"></td>
                    <td class="visitante">Eslováquia</a></td>
		        </tr>
           </tbody>
        </table>
        </div>
        <br />
        <h2> GRUPO # H</h2>
        <div class="tabela_resultados2">
        <table class="tabela_jogo2" cellspacing="0" style="border-collapse:collapse;">
	        <tbody > 
                 <tr>
			        <td class="data">16/06 - 15h30</td>
                    <td class="mandante">Honduras</td>
                    <td class="escudo_mandante"><img  src="./imagens/selecoes/honduras.gif" alt="Hondunras" title="Bandeira - Hondunras"></td>
                    <td class="placar_mandante" style="white-space:nowrap;">
                        <asp:TextBox ID="TextBox33" runat="server" Width="34px"></asp:TextBox>
                    </td>
                    <td class="versus" style="white-space:nowrap;">X</td>
                    <td class="placar_visitante" tyle="white-space:nowrap;">
                        <asp:TextBox ID="TextBox34" runat="server" Width="34px"></asp:TextBox>
                    </td>
                    <td class="escudo_visitante"><img  src="./imagens/selecoes/chile.gif" alt="Chile" title="Bandeira - Chile"></td>
                    <td class="visitante">Chile</a></td>
		        </tr>
                <tr>
			        <td class="data">16/06 - 18h00</td>
                    <td class="mandante">Espanha</td>
                    <td class="escudo_mandante"><img  src="./imagens/selecoes/espanha.gif" alt="Espanha" title="Bandeira - Espanha"></td>
                    <td class="placar_mandante" style="white-space:nowrap;">
                        <asp:TextBox ID="TextBox35" runat="server" Width="34px"></asp:TextBox>
                    </td>
                    <td class="versus" style="white-space:nowrap;">X</td>
                    <td class="placar_visitante" tyle="white-space:nowrap;">
                        <asp:TextBox ID="TextBox36" runat="server" Width="34px"></asp:TextBox>
                    </td>
                    <td class="escudo_visitante"><img  src="./imagens/selecoes/suica.gif" alt="Suíça" title="Bandeira - Suíça"></td>
                    <td class="visitante">Suíça</a></td>
		        </tr>
           </tbody>
        </table>
        </div>
</div>
</form>
<div class="comandos" align="center">
    <input id="Submit1" type="submit" value="Salvar" class="button"/> &nbsp  
    <input id="Reset1" type="reset" value="Limpar" class="button" />
</div>
</div>
</asp:Content>
