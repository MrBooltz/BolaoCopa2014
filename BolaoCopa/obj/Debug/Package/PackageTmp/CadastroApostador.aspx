<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeBehind="CadastroApostador.aspx.cs" Inherits="BolaoCopa.CadastroApostador" %>
<asp:Content ID="Conteudo1" ContentPlaceHolderID="head" runat="server">
    
    <!-- definição do estilo a ser utilizado na página de cadatro de apostador -->
    <style type="text/css">
        #textoIdentificacao
        {
            position:absolute;
            left:10px;
            top:4px;
            width: 980px;
            height: 21px;
        }
        #labelCampos
        {
            position:absolute;
            text-align:right;
            top:33px;
            left:10px;
            width:180px;
            height:465px;
        }
        #valorCampos
        {
            position:absolute;
            text-align:left;
            top:33px;
            left:200px;
            width:642px;
            height:465px;
        }
        #botaoSalvar
        {
            position:absolute;
            text-align:right;
            border-color:rgb(170,170,170);
            border-width:1px;
            background-color:rgb(248,248,248);
            top:503px;
            left:10px;
            width:980px;
            height:45px;
        }
        #labelMensagem
        {
            position:absolute;
            text-align:left;
            left:9px;
            top:12px;
            width:667px;
            height:20px;
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
        #areaMensagem
        {
            position:absolute;
            text-align:center;
            top:555px;
            left:10px;
            width:980px;
            height:33px;
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
    <!-- fim da div do texto de instrução da página -->

    <!-- div dos labels dos campos do formulário -->
    <div id="labelCampos">
        <asp:Label ID="lbNomeCompleto" runat="server" Text="Nome Completo :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="lbCPF" runat="server" Text="CPF :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="lbEndereco" runat="server" Text="Endereço :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="lbComplemento" runat="server" Text="Complemento :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="lbBairro" runat="server" Text="Bairro :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="lbCidade" runat="server" Text="Cidade :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="lbEstado" runat="server" Text="Estado :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="lbCep" runat="server" Text="CEP :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="lbEmail" runat="server" Text="Email de Login :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="lbSenha" runat="server" Text="Senha :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="lbConfirmacao" runat="server" Text="Confirmação Senha :" 
            CssClass="labelCadastro" Height="16px"></asp:Label><br />
        <asp:Label ID="lbBandeira" runat="server" Text="Bandeira :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="lbCartao" runat="server" Text="No. Cartão Crédito :" 
            CssClass="labelCadastro" Height="16px"></asp:Label><br />
        <asp:Label ID="lbTitular" runat="server" Text="Nome Impresso no Cartão :" 
            CssClass="labelCadastro" Height="16px"></asp:Label><br />
        <asp:Label ID="lbValidade" runat="server" Text="Validade :" CssClass="labelCadastro" 
            Height="16px"></asp:Label><br />
        <asp:Label ID="lbCodSeguranca" runat="server" Text="Código de Segurança :" 
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
            Height="23px" DataSourceID="SqlEstados" DataTextField="NOME" 
            DataValueField="COD_ESTADO">
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
            <asp:ListItem Value="AMERICAN EXPRESS">AMERICAN EXPRESS</asp:ListItem>
            <asp:ListItem Value="DINNERS CLUB">DINNERS CLUB</asp:ListItem>
            <asp:ListItem Value="MASTERCARD">MASTERCARD</asp:ListItem>
            <asp:ListItem Value="VISA">VISA</asp:ListItem>
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
        <asp:SqlDataSource ID="SqlEstados" runat="server" 
            ConnectionString="<%$ ConnectionStrings:bolaoCopaConnectionString %>" 
            SelectCommand="SELECT * FROM [ESTADOS] ORDER BY [NOME]"></asp:SqlDataSource>
    </div>
    <!-- fim da div dos inputs dos campos do formulário -->

    <!-- div do botão "Salvar" -->
    <div id="botaoSalvar">
        <asp:Button ID="btnSalvar" runat="server" CssClass="buttonPadding" Height="33px"
            Text="Salvar" Width="133px" onclick="btnSalvar_Click"/>
        <asp:Button ID="btnRetornar" runat="server" CssClass="buttonPadding" Height="33px"
            Text="Retornar" Width="133px" CausesValidation="False" 
            PostBackUrl="~/Default.aspx" UseSubmitBehavior="False"/>
        <asp:SqlDataSource ID="SqlInsert" runat="server" 
            ConnectionString="<%$ ConnectionStrings:bolaoCopaConnectionString %>" 
            InsertCommand="INSERT INTO [APOSTADORES] ([NOME], [EMAIL], [SENHA], [CPF], [LOGRADOURO], [COMPLEMENTO], [BAIRRO], [CIDADE], [ESTADO], [CEP], [NR_CARTAO], [BANDEIRA], [TITULAR], [MES_VALIDADE], [ANO_VALIDADE], [COD_SEGURANCA]) VALUES (@NOME, @EMAIL, @SENHA, @CPF, @LOGRADOURO, @COMPLEMENTO, @BAIRRO, @CIDADE, @ESTADO, @CEP, @NR_CARTAO, @BANDEIRA, @TITULAR, @MES_VALIDADE, @ANO_VALIDADE, @COD_SEGURANCA)" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT * FROM [APOSTADORES] ORDER BY [NOME]">
            <InsertParameters>
                <asp:ControlParameter ControlID="txtNome" Name="NOME" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtLogin" Name="EMAIL" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtSenha" Name="SENHA" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtCPF" Name="CPF" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtEndereco" Name="LOGRADOURO" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtComplemento" Name="COMPLEMENTO" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtBairro" Name="BAIRRO" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtCidade" Name="CIDADE" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="cbEstados" Name="ESTADO" 
                    PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="txtCEP" Name="CEP" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="txtCartao" Name="NR_CARTAO" 
                    PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="cbBandeira" Name="BANDEIRA" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="txtTitular" Name="TITULAR" PropertyName="Text" 
                    Type="String" />
                <asp:ControlParameter ControlID="cbMes" Name="MES_VALIDADE" 
                    PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="cbAno" Name="ANO_VALIDADE" 
                    PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="txtCodSeguranca" Name="COD_SEGURANCA" 
                    PropertyName="Text" Type="Int32" />
            </InsertParameters>
        </asp:SqlDataSource>

        <!-- div da exibição de mensagens da aplicação -->
        <div id="labelMensagem">
            <asp:Label ID="lbMensagem" runat="server" CssClass="label" ForeColor="Red"></asp:Label>
        </div>
        <!-- fim da div de exibição de mensagens -->

    </div>
    <!-- fim da div do botão "Salvar" -->

    <!-- div de erros não tratados -->
    <div id="areaMensagem">
        <asp:Label ID="lbMensagemErro" runat="server" Visible="False" ForeColor="Red"></asp:Label>
    </div>
    <!-- fim da div de erros não tratados -->
</asp:Content>

<asp:Content ID="Conteudo3" runat="server" contentplaceholderid="ctnLogoBolao">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagens/logoBolaoMenu.png" />
</asp:Content>