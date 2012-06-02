<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeBehind="CadastroApostador.aspx.cs" Inherits="BolaoCopa.WebForm2" %>
<asp:Content ID="Conteudo1" ContentPlaceHolderID="head" runat="server">
    
    <!-- definição do estilo a ser utilizado na página de cadatro de apostador -->
    <style type="text/css">
        #textoIdentificacao
        {
            position:absolute;
            left:10px;
            top:2px;
            width: 980px;
            height: 21px;
        }
        #labelCampos
        {
            position:absolute;
            text-align:right;
            top:32px;
            left:10px;
            width:180px;
            height:465px;
        }
        #valorCampos
        {
            position:absolute;
            text-align:left;
            top:32px;
            left:200px;
            width:642px;
            height:465px;
        }
        #botaoSalvar
        {
            position:absolute;
            text-align:center;
            top:496px;
            left:10px;
            width:980px;
            height:33px;
        }
        #validadores
        {
            position:absolute;
            text-align:left;
            left:871px;
            width:390px;
            top:32px;
            height:465px;
        }
    </style>
    <!-- fim da seção de definição de estilo da página -->
</asp:Content>

<asp:Content ID="Conteudo2" runat="server" contentplaceholderid="ctnConteudo">

    <!-- div do texto de instrução da página -->
    <div id="textoIdentificacao">
        <asp:Label ID="lbPreencha" runat="server" CssClass="label" 
            Text="Para que seu cadastro possa ser realizado com sucesso, por favor preencha todas as informações abaixo e pressionar o botão &quot;Salvar&quot; :"></asp:Label>
    </div> 

    <!-- div dos labels dos campos do formulário -->
    <div id="labelCampos">
        <asp:Label ID="Label2" runat="server" Text="Nome Completo :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="Label1" runat="server" Text="CPF :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="Label3" runat="server" Text="Endereço :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="Label4" runat="server" Text="Complemento :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="Label5" runat="server" Text="Bairro :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="Label6" runat="server" Text="Cidade :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="Label7" runat="server" Text="Estado :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="Label8" runat="server" Text="CEP :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="Label9" runat="server" Text="Email de Login :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="Label10" runat="server" Text="Senha :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="Label11" runat="server" Text="Confirmação Senha :" 
            CssClass="labelCadastro" Height="16px"></asp:Label><br />
        <asp:Label ID="Label16" runat="server" Text="Bandeira :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="Label12" runat="server" Text="No. Cartão Crédito :" 
            CssClass="labelCadastro" Height="16px"></asp:Label><br />
        <asp:Label ID="Label14" runat="server" Text="Nome Impresso no Cartão :" 
            CssClass="labelCadastro" Height="16px"></asp:Label><br />
        <asp:Label ID="Label13" runat="server" Text="Validade :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="Label15" runat="server" Text="Código de Segurança :" 
            CssClass="label" Height="16px"></asp:Label>
    </div>
    <!-- fim da div de labels dos campos do formulário -->

    <!-- div dos inputs dos campos do formulário -->
    <div id="valorCampos">
        <asp:TextBox ID="txtNome" runat="server" Width="378px" CssClass="camposCadastro" 
            Height="20px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtNome" CssClass="validador" 
                ErrorMessage="Campo 'Nome' Obrigatório" Height="16px" SetFocusOnError="True" 
                Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtCPF" runat="server" Width="176px" CssClass="camposCadastro" 
            Height="20px" MaxLength="14"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valCPF" runat="server" 
                ControlToValidate="txtCPF" CssClass="validador" 
                ErrorMessage="Campo 'CPF' Obrigatório" Height="16px" SetFocusOnError="True" 
                Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="valRegexCPF" Height="16px" runat="server" 
                ControlToValidate="txtCPF" CssClass="validador" 
                ErrorMessage="O CPF deve estar no formato 999.999.999-99 !!!" SetFocusOnError="True" 
                ValidationExpression="^\d{3}\.\d{3}\.\d{3}-\d{2}$" Display="Dynamic"></asp:RegularExpressionValidator>    
        <br />
        <asp:TextBox ID="txtEndereco" runat="server" Width="378px" CssClass="camposCadastro" 
            Height="20px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valEndereco" runat="server" 
                ControlToValidate="txtEndereco" CssClass="validador" 
                ErrorMessage="Campo 'Endereço' Obrigatório" Height="16px" SetFocusOnError="True" 
                Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtComplemento" runat="server" Width="277px" CssClass="camposCadastro"
            Height="20px"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtBairro" runat="server" Width="277px" CssClass="camposCadastro" 
            Height="20px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valBairro" runat="server" 
                ControlToValidate="txtBairro" CssClass="validador" 
                ErrorMessage="Campo 'Bairro' Obrigatório" Height="16px" SetFocusOnError="True" 
                Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtCidade" runat="server" Width="277px" CssClass="camposCadastro" 
            Height="20px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valCidade" runat="server" 
                ControlToValidate="txtCidade" CssClass="validador" 
                ErrorMessage="Campo 'Cidade' Obrigatório" Height="16px" SetFocusOnError="True" 
                Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
        <asp:DropDownList ID="cbEstados" runat="server" CssClass="combosCadastro" 
            Height="23px">
            <asp:ListItem Value="AC">ACRE</asp:ListItem>
            <asp:ListItem Value="AL">ALAGOAS</asp:ListItem>
            <asp:ListItem Value="AP">AMAPÁ</asp:ListItem>
            <asp:ListItem Value="AM">AMAZONAS</asp:ListItem>
            <asp:ListItem Value="BA">BAHIA</asp:ListItem>
            <asp:ListItem Value="CE">CEARÁ</asp:ListItem>
            <asp:ListItem Value="DF">DISTRITO FEDERAL</asp:ListItem>
            <asp:ListItem Value="ES">ESPÍRITO SANTO</asp:ListItem>
            <asp:ListItem Value="GO">GIOÁS</asp:ListItem>
            <asp:ListItem Value="MA">MARANHÃO</asp:ListItem>
            <asp:ListItem Value="MT">MATO GROSSO</asp:ListItem>
            <asp:ListItem Value="MS">MATO GROSSO DO SUL</asp:ListItem>
            <asp:ListItem Value="MG">MINAS GERAIS</asp:ListItem>
            <asp:ListItem Value="PA">PARÁ</asp:ListItem>
            <asp:ListItem Value="PB">PARAÍBA</asp:ListItem>
            <asp:ListItem Value="PR">PARANÁ</asp:ListItem>
            <asp:ListItem Value="PE">PERNAMBUCO</asp:ListItem>
            <asp:ListItem Value="PI">PIAUÍ</asp:ListItem>
            <asp:ListItem Value="RJ">RIO DE JANEIRO</asp:ListItem>
            <asp:ListItem Value="RN">RIO GRANDE DO NORTE</asp:ListItem>
            <asp:ListItem Value="RS">RIO GRANDE DO SUL</asp:ListItem>
            <asp:ListItem Value="RO">RONDÔNIA</asp:ListItem>
            <asp:ListItem Value="RR">RORAIMA</asp:ListItem>
            <asp:ListItem Value="SC">SANTA CATARINA</asp:ListItem>
            <asp:ListItem Value="SP">SÃO PAULO</asp:ListItem>
            <asp:ListItem Value="SE">SERGIPE</asp:ListItem>
            <asp:ListItem Value="TO">TOCANTINS</asp:ListItem>
        </asp:DropDownList><br />
        <asp:TextBox ID="txtCEP" runat="server" Width="91px" CssClass="camposCadastro" 
            MaxLength="9" Height="20px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valCep" runat="server" 
                ControlToValidate="txtCEP" CssClass="validador" 
                ErrorMessage="Campo 'CEP' Obrigatório" Height="16px" SetFocusOnError="True" 
                Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="valRegexCep" Height="16px" runat="server" 
                ControlToValidate="txtCEP" CssClass="validador" 
                ErrorMessage="O CEP deve estar no formato 99999-999 !!!" SetFocusOnError="True" 
                ValidationExpression="^\d{5}-\d{3}$" Display="Dynamic"></asp:RegularExpressionValidator>    
        <br />
        <asp:TextBox ID="txtLogin" runat="server" Width="282px" CssClass="camposCadastro" 
            MaxLength="50" Height="20px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valLogin" runat="server" 
                ControlToValidate="txtLogin" CssClass="validador" 
                ErrorMessage="Campo 'Login' Obrigatório" Height="16px" SetFocusOnError="True" 
                Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="valRegexLogin" Height="16px" runat="server" 
                ControlToValidate="txtLogin" CssClass="validador" 
                ErrorMessage="E-mail inválido !!!" SetFocusOnError="True" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
            Display="Dynamic"></asp:RegularExpressionValidator>    
        <br />
        <asp:TextBox ID="txtSenha" runat="server" Width="282px" CssClass="camposCadastro" 
            MaxLength="16" Height="20px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valSenha" runat="server" 
                ControlToValidate="txtSenha" CssClass="validador" 
                ErrorMessage="Campo 'Senha' Obrigatório" Height="16px" SetFocusOnError="True" 
                Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="valRegexSenha" Height="16px" runat="server" 
                ControlToValidate="txtSenha" CssClass="validador" 
                ErrorMessage="A senha deve ter no mínimo 6 caracteres !!!" SetFocusOnError="True" 
                ValidationExpression="(^$)|(^.{6,}$)" Display="Dynamic"></asp:RegularExpressionValidator>    
        <br />
        <asp:TextBox ID="txtConfirmacao" runat="server" Width="282px" CssClass="camposCadastro" 
            MaxLength="16" Height="20px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valConfirmacao" runat="server" 
                ControlToValidate="txtConfirmacao" CssClass="validador" 
                ErrorMessage="Campo 'Confirmação' Obrigatório" Height="16px" 
                SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="valCompararConfirmacao" runat="server" 
                ControlToCompare="txtSenha" ControlToValidate="txtConfirmacao" 
                CssClass="validador" Display="Dynamic" ErrorMessage="A senha não confere !!!" 
                Height="16px" SetFocusOnError="True"></asp:CompareValidator>
        <br />
        <asp:DropDownList ID="cbBandeira" runat="server" CssClass="combosCadastro" 
            Height="23px">
            <asp:ListItem Value="1">AMERICAN EXPRESS</asp:ListItem>
            <asp:ListItem Value="2">DINNERS CLUB</asp:ListItem>
            <asp:ListItem Value="3">MASTERCARD</asp:ListItem>
            <asp:ListItem Value="4">VISA</asp:ListItem>
        </asp:DropDownList><br />
        <asp:TextBox ID="txtCartao" runat="server" Width="197px" CssClass="camposCadastro" 
            MaxLength="16" Height="20px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valCartao1" runat="server" 
                ControlToValidate="txtCartao" CssClass="validador" 
                ErrorMessage="Campo 'No. Cartão' Obrigatório" Height="16px" SetFocusOnError="True" 
                Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="valRegexCartao" Height="16px" runat="server" 
                ControlToValidate="txtCartao" CssClass="validador" 
                ErrorMessage="No. do Cartão de Crédito Inválido !!!" SetFocusOnError="True" 
                ValidationExpression="[1-9]\d{15}$" Display="Dynamic"></asp:RegularExpressionValidator>    
        <br />
        <asp:TextBox ID="txtTitular" runat="server" Width="282px" CssClass="camposCadastro" 
            Height="20px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="valTitular" runat="server" 
                ControlToValidate="txtTitular" CssClass="validador" 
                ErrorMessage="Campo 'Titular' Obrigatório" Height="16px" 
                SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
        <br />
        <asp:DropDownList ID="cbMes" runat="server" CssClass="combosCadastro" 
            Height="23px">
            <asp:ListItem Value="1">01</asp:ListItem>
            <asp:ListItem Value="2">02</asp:ListItem>
            <asp:ListItem Value="3">03</asp:ListItem>
            <asp:ListItem Value="4">04</asp:ListItem>
            <asp:ListItem Value="5">05</asp:ListItem>
            <asp:ListItem Value="6">06</asp:ListItem>
            <asp:ListItem Value="7">07</asp:ListItem>
            <asp:ListItem Value="8">08</asp:ListItem>
            <asp:ListItem Value="9">09</asp:ListItem>
            <asp:ListItem Value="10">10</asp:ListItem>
            <asp:ListItem Value="11">11</asp:ListItem>
            <asp:ListItem Value="12">12</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="cbAno" runat="server" CssClass="combosCadastro" 
            Height="23px">
            <asp:ListItem Value="2012">2012</asp:ListItem>
            <asp:ListItem Value="2013">2013</asp:ListItem>
            <asp:ListItem Value="2014">2014</asp:ListItem>
            <asp:ListItem Value="2015">2015</asp:ListItem>
            <asp:ListItem Value="2016">2016</asp:ListItem>
            <asp:ListItem Value="2017">2017</asp:ListItem>
            <asp:ListItem Value="2018">2018</asp:ListItem>
            <asp:ListItem Value="2019">2019</asp:ListItem>
            <asp:ListItem Value="2020">2020</asp:ListItem>
            <asp:ListItem Value="2021">2021</asp:ListItem>
            <asp:ListItem Value="2022">2022</asp:ListItem>
            <asp:ListItem Value="2023">2023</asp:ListItem>
            <asp:ListItem Value="2024">2024</asp:ListItem>
            <asp:ListItem Value="2025">2025</asp:ListItem>
            <asp:ListItem Value="2026">2026</asp:ListItem>
            <asp:ListItem Value="2027">2027</asp:ListItem>
            <asp:ListItem Value="2028">2028</asp:ListItem>
            <asp:ListItem Value="2029">2029</asp:ListItem>
            <asp:ListItem Value="2030">2030</asp:ListItem>
        </asp:DropDownList><br />
        <asp:TextBox ID="txtCodSeguranca" runat="server" Width="36px" 
             CssClass="camposCadastro" MaxLength="3" Height="20px"></asp:TextBox>
             <asp:RequiredFieldValidator ID="valCodSeguranca" runat="server" 
                ControlToValidate="txtCodSeguranca" CssClass="validador" 
                ErrorMessage="Campo 'Cód. Segurança' Obrigatório" Height="16px" 
                SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>
             <asp:RangeValidator ID="valRangeCodSeguranca" runat="server" 
                ControlToValidate="txtCodSeguranca" CssClass="validador" 
                
            ErrorMessage="O Código de Segurança deve ser númerico e conter 3 dígitos !!!" Height="16px" 
                MaximumValue="999" MinimumValue="100" 
                Type="Integer" SetFocusOnError="True" Display="Dynamic"></asp:RangeValidator>
    </div>
    <!-- fim da div dos inputs dos campos do formulário -->

    <!-- div do botão "Salvar" -->
    <div id="botaoSalvar">
        <asp:Button ID="btnSalvar" runat="server" CssClass="button" Height="33px" 
            Text="Salvar" Width="149px" PostBackUrl="~/Default.aspx"/>
    </div>
    <!-- fim da div do botão "Salvar" -->
</asp:Content>

<asp:Content ID="Conteudo3" runat="server" contentplaceholderid="ctnLogoBolao">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagens/logoBolaoMenu.png" />
</asp:Content>