<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="BolaoCopa.Principal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <!-- definição do estilo a ser utilizado na página principal -->
    <style type="text/css">
        #imagemContador
        {
            float:right;
        }
        #textoContador
        {
            position:absolute;
            left:871px;
            top:7px;
            font-family: Verdana, Geneva, sans-serif;
            font-size: 30px;
            color:White;
        }
        #welcome
        {
            position:absolute;
            font-family:Segoe UI;
            font-size:25px;
            font-weight:bold;
            color:rgb(150,180,25);
            margin-left:5px;
            margin-top:10px;
        }    
        #subHeader
        {
            height: 75px;
        }
        #subBody
        {
            height:338px;
            width: 983px;
        }
        #title
        {
            height:36px;
            font-family:Segoe UI;
            font-size:18px;
            font-weight:normal;
            color:rgb(150,180,25);
            margin-left:5px;
        }
        #logoCopa
        {
            float:left;
            margin-top:5px;
            margin-right:10px;
            margin-left:20px;
            width: 126px;
        }
    </style>
    <!-- fim da seção de definição de estilo da página -->
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ctnConteudo" runat="server">
    <!-- div do cabecalho secundario -->
    <div id="subHeader">
        
        <!-- div da imagem de fundo do contador de dias -->
        <div id="imagemContador">
            <asp:Image ID="imContador" runat="server" 
                ImageUrl="~/Imagens/contadorDias.png" />
        </div>
        <!-- fim da div da imagem de fundo do contador de dias -->

        <!-- div do texto do contador de dias para a copa -->
        <div id="textoContador">
            <asp:Label ID="lbTextoContador" runat="server" Text="0 0 0 0"></asp:Label>
        </div>
        <!-- fim da div do texto do contador de dias para a copa -->

        <!-- div do texto de boas vindas -->
        <div id="welcome">
            <asp:Label ID="lbBemVindo" runat="server" Text="Seja Bem-Vindo(a) Fulano !"></asp:Label>
        </div>
        <!-- fim da div do texto de boas vindas -->

    </div>
    <!-- fim da div do cabecalho secundario -->

    <!-- div do título -->
    <div id="title">
        <asp:Label ID="lbHistoria" runat="server" Text="Um pouco de informação ..."></asp:Label>
    </div>
    <!-- fim div do título -->

    <!-- div do corpo secundário para o texto principal -->
    <div id="subBody">
        
        <!-- div da imagem da logomarca da copa -->
        <div id="logoCopa">
            <asp:Image ID="imLogo" runat="server" 
                ImageUrl="~/Imagens/logoCopaEntrada.png" />    
        </div>
        <!-- fim da div da imagem da logomarca da copa -->
    
        <p class="small">A Copa do Mundo da FIFA é um dos maiores eventos esportivos do planeta. A disputa quadrienal entre as melhores 
seleções do mundo mobiliza bilhões de pessoas de todos os quadrantes, de todas as culturas. Inflama paixões e, 
ao mesmo tempo, reduz diferenças, já que os povos dos mais distintos países, durante os 90 minutos de uma partida, 
criam um laço comum ao compartilhar a mesma emoção, ao mesmo tempo. É um acontecimento raro, sem similar, e por 
isso digno de reconhecimento universal.
</p>
<p class="small">Em 2014, o Brasil será novamente a sede do torneio. A vigésima Copa do Mundo da FIFA ocorrerá 64 anos depois da 
edição em que a seleção nacional se sagrou vice-campeã mundial em pleno Maracanã. Ainda faltam quase três anos, 
mas desde que houve a definição do país sede, em 20 de outubro de 2007, iniciou-se um abrangente esforço nacional. 
Não se trata simplesmente de cumprir as exigências da organização e fazer um bom papel aos olhos do mundo. Desde 
maio de 2007, quando houve a ratificação das 12 cidades-sede, um trabalho de planejamento e execução de empreendimentos 
estratégicos desencadeou um processo de desenvolvimento que transcende qualquer parâmetro esportivo.
</p>
<p class="small">
No cronograma da Copa, a primeira data importante foi 30 de julho, quando houve o sorteio dos grupos das 
eliminatórias, sob os olhos do mundo. Desde então, os projetos seguiram em ritmo acelerado para o cumprimento 
dos cronogramas e a certeza de que, em junho de 2014, haverá um palco impecável para o grande acontecimento: o 
Brasil, que certamente será um país ainda melhor, em todos os sentidos.


</p>
        
    
    </div>
    <!-- fim da div do corpo secundário para o texto principal -->
</asp:Content>

