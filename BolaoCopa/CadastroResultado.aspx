<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="CadastroResultado.aspx.cs" Inherits="BolaoCopa.CadastroResultado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript">
    var agente = navigator.userAgent;
    var plat = navigator.platform;
    var nome = navigator.appName;
    var versao = navigator.appVersion;
    var cookie = navigator.cookieEnabled;

    function detecNav() {
        if (agente.indexOf("IE", 0) != -1)
            return "IE";
        else return "ECMA";

    }
    function infoNav(elemento) {
        elemento.innerHTML = "Agente: " + agente + "\n";
        elemento.innerHTML += "Navegador: " + nome + " / " + versao + "\n";
        elemento.innerHTML += "Plataforma: " + plat + "\n";

        if (cookie)
            elemento.innerHTML += "Cookies habilitados";
        else elemento.innerHTML += "Cookies bloqueados pelo usuÃ¡rio";
    }

    function validaNumero(objeto, evento, navegador) {

        if (navegador != "IE") {
            var teste = evento.which;
        }
        else
            var teste = evento.keyCode;

        var validos = '0123456789';

        if (evento.keyCode >= 8 && evento.keyCode <= 46) {
            return (true);
        }

        var numerico = validos.indexOf(String.fromCharCode(teste), 0);

        if (numerico == -1) {
            return (false);
        }

    }

    var navegador = detecNav();

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ctnConteudo" runat="server">
    <div class="corpo">
<h1> Cadastro de Resultados </h1><br />
<div class="resultados">
<form>
     <asp:Label ID="Label1" runat="server" Text="Rodada: "></asp:Label><br />
    <asp:DropDownList ID="cbRodada" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="DESCRICAO" 
        DataValueField="COD_RODADA" Width="100px" AutoPostBack="True" 
        onselectedindexchanged="cbRodada_SelectedIndexChanged" 
        ontextchanged="cbRodada_TextChanged">
    </asp:DropDownList><br />
    <asp:Label ID="Label2" runat="server" Text="Grupo: "></asp:Label><br />
    <asp:DropDownList ID="cbGrupo" runat="server" 
        DataSourceID="SqlDataSource2" DataTextField="DESCRICAO" 
        DataValueField="COD_GRUPO" 
        onselectedindexchanged="cbGrupo_SelectedIndexChanged" Width="100px" 
        AutoPostBack="True">
    </asp:DropDownList><br />
        <div class="tabela_resultados">
        
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="grdResultados" runat="server" AutoGenerateColumns="False" 
                        DataSourceID="SqlDataSource3" Width="873px" AllowSorting="True" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" 
                        OnRowCommand="grdResultados_RowCommand" HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="DATAHORA" SortExpression="DATAHORA" />
                            <asp:BoundField DataField="NOME" SortExpression="NOME" />


                            <asp:ImageField DataImageUrlField="BANDEIRA">
                            </asp:ImageField>


                            <asp:TemplateField>
                                <ItemTemplate>
                                     <asp:TextBox id='txtPlacar1' MaxLength="2" runat="server" Visible="true" Enabled="true" Width="20px" onkeypress="return validaNumero(this, event, navegador);" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Label ID="x" runat="server" Text="X"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                     <asp:TextBox id='txtPlacar2' MaxLength="2" runat="server" Visible="true" Enabled="true" Width="20px" onkeypress="return validaNumero(this, event, navegador);" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:ImageField DataImageUrlField="BANDEIRA1">
                            </asp:ImageField>
                            <asp:BoundField DataField="NOME1" SortExpression="NOME1" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                 <asp:Button ID="Button1" runat="server" Text="Apostar" CommandName="apostarJogo"  CssClass="button"
                                    CommandArgument='<%# DataBinder.Eval(Container.DataItem,"COD_JOGO")  + "|" + DataBinder.Eval(Container.DataItem,"Linhas")%>' />
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:BoundField DataField="COD_JOGO" HeaderText="COD_JOGO" ReadOnly="True" 
                                SortExpression="COD_JOGO" Visible="False" />



                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#96B419" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <br />
                    <asp:Label ID="lblMsgErro" runat="server" Text="" Visible="false"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>

          
        </div>

      
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bolaoCopaConnectionString %>" 
         SelectCommand="SELECT * FROM [RODADAS]">
    </asp:SqlDataSource>


<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bolaoCopaConnectionString %>" 
        SelectCommand="SELECT * FROM [GRUPOS]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:bolaoCopaConnectionString %>" SelectCommand="SELECT ROW_NUMBER() OVER (ORDER BY alias.cod_jogo DESC) AS Linhas, * FROM
(
SELECT J.COD_JOGO, J.DATAHORA, S1.NOME as NOME, S1.BANDEIRA as BANDEIRA, J.TIME_A as GOLS_A, J.TIME_B as GOLS_B,S2.NOME as NOME1, S2.BANDEIRA as BANDEIRA1 FROM JOGOS J, SELECOES S1, SELECOES S2, RODADAS R, GRUPOS G
WHERE R.COD_RODADA = J.RODADA AND
	  J.TIME_A = S1.COD_SELECAO AND
	  J.TIME_B = S2.COD_SELECAO AND
	  G.COD_GRUPO = S1.GRUPO AND
                     R.COD_RODADA = @codRodada AND
                     G.COD_GRUPO = @codGrupo
)alias
">
        <SelectParameters>
            <asp:ControlParameter ControlID="cbRodada" DefaultValue="" 
                Name="codRodada" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="cbGrupo" DefaultValue="" 
                Name="codGrupo" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
</form>

</div>
</div>
</asp:Content>
