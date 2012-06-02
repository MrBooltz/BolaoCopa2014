<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeBehind="CadastroApostador.aspx.cs" Inherits="BolaoCopa.WebForm2" %>
<asp:Content ID="Conteudo1" ContentPlaceHolderID="head" runat="server">
 
</asp:Content>

<asp:Content ID="Conteudo2" runat="server" contentplaceholderid="ctnConteudo">
    <p class="label">
        <span class="style1">
            &nbsp; Preencha todos os campos abaixo para realizar o seu cadastro no Bolão da Copa do Mundo FIFA<br />
            &nbsp; 2014 :
            <br /><br /> 
        
            &nbsp; Nome Completo:&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;
        
            <asp:RequiredFieldValidator ID="valNome" runat="server" ControlToValidate="txtNome" ErrorMessage="Campo Obrigatório" 
             Font-Bold="True" Font-Names="Segoe UI" Font-Size="XX-Small" ForeColor="Red"> </asp:RequiredFieldValidator>

            &nbsp;&nbsp;&nbsp; C.P.F.:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:RequiredFieldValidator ID="valCPF" runat="server" ControlToValidate="txtCPF" ErrorMessage="Campo Obrigatório" 
                Font-Bold="True" Font-Names="Segoe UI" Font-Size="XX-Small" ForeColor="Red"> </asp:RequiredFieldValidator>
            <br /> &nbsp;
        </span>

        <asp:TextBox ID="txtNome" runat="server" CssClass="inputText" Width="404px"> </asp:TextBox> &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtCPF" runat="server" CssClass="inputText" TabIndex="1" Width="148px"> </asp:TextBox>
        <br />
        <br />

        &nbsp; Endereço:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        
        <span class="style1">
            <asp:RequiredFieldValidator ID="valEndereco" runat="server" ControlToValidate="txtEndereco" 
                ErrorMessage="Campo Obrigatório" Font-Bold="True" Font-Names="Segoe UI" Font-Size="XX-Small" 
                ForeColor="Red"> </asp:RequiredFieldValidator>
        </span>

        &nbsp;&nbsp;&nbsp; Complemento:<br /> &nbsp;

        <asp:TextBox ID="txtEndereco" runat="server" CssClass="inputText" TabIndex="2" Width="402px"> </asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtComplemento" runat="server" CssClass="inputText" TabIndex="2" Width="148px"> </asp:TextBox>
        <br />
        <br />

        &nbsp; Bairro:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        
        <span class="style1">
            <asp:RequiredFieldValidator ID="valBairro" runat="server" ControlToValidate="txtBairro" ErrorMessage="Campo Obrigatório" 
                Font-Bold="True" Font-Names="Segoe UI" Font-Size="XX-Small" ForeColor="Red"> </asp:RequiredFieldValidator>
        </span>

        &nbsp;&nbsp; Cidade:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        
        <span class="style1">
            <asp:RequiredFieldValidator ID="valCidade" runat="server" ControlToValidate="txtCidade" ErrorMessage="Campo Obrigatório" 
                Font-Bold="True" Font-Names="Segoe UI" Font-Size="XX-Small" ForeColor="Red"> </asp:RequiredFieldValidator>
        </span>

        &nbsp;&nbsp; UF:&nbsp;&nbsp;&nbsp;&nbsp; 
        
        <span class="style1">
            <asp:RequiredFieldValidator ID="valUF" runat="server" ControlToValidate="cbEstados" ErrorMessage="**" Font-Bold="True" 
                Font-Names="Segoe UI" Font-Size="XX-Small" ForeColor="Red"> </asp:RequiredFieldValidator>
        </span>

        <br />
        &nbsp;
        <asp:TextBox ID="txtBairro" runat="server" CssClass="inputText" TabIndex="2" Width="195px"></asp:TextBox>

        &nbsp;&nbsp;
        <asp:TextBox ID="txtCidade" runat="server" CssClass="inputText" TabIndex="2" Width="300px"></asp:TextBox>

        &nbsp;&nbsp;
        <asp:DropDownList ID="cbEstados" runat="server" CssClass="combo">
            <asp:ListItem>AC</asp:ListItem>
            <asp:ListItem>AL</asp:ListItem>
            <asp:ListItem>AM</asp:ListItem>
            <asp:ListItem>AP</asp:ListItem>
            <asp:ListItem>BA</asp:ListItem>
            <asp:ListItem>CE</asp:ListItem>
            <asp:ListItem>DF</asp:ListItem>
            <asp:ListItem>ES</asp:ListItem>
            <asp:ListItem>GO</asp:ListItem>
            <asp:ListItem>MA</asp:ListItem>
            <asp:ListItem>MG</asp:ListItem>
            <asp:ListItem>MS</asp:ListItem>
            <asp:ListItem>MT</asp:ListItem>
            <asp:ListItem>PA</asp:ListItem>
            <asp:ListItem>PB</asp:ListItem>
            <asp:ListItem>PE</asp:ListItem>
            <asp:ListItem>PI</asp:ListItem>
            <asp:ListItem>PR</asp:ListItem>
            <asp:ListItem>RJ</asp:ListItem>
            <asp:ListItem>RN</asp:ListItem>
            <asp:ListItem>RO</asp:ListItem>
            <asp:ListItem>RR</asp:ListItem>
            <asp:ListItem>RS</asp:ListItem>
            <asp:ListItem>SC</asp:ListItem>
            <asp:ListItem>SE</asp:ListItem>
            <asp:ListItem>SP</asp:ListItem>
            <asp:ListItem>TO</asp:ListItem>
        </asp:DropDownList> <br />
        <br />

        &nbsp; E-mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        
        <span class="style1">
            <asp:RequiredFieldValidator ID="valUsuario" runat="server" ControlToValidate="txtEmail" 
                ErrorMessage="Campo Obrigatório" Font-Bold="True" Font-Names="Segoe UI" Font-Size="XX-Small" 
                ForeColor="Red"></asp:RequiredFieldValidator>
        </span> <br />

        &nbsp;
        <asp:TextBox ID="txtEmail" runat="server" CssClass="inputText" TabIndex="2" Width="322px"></asp:TextBox>
        <br />
        <br />

        &nbsp; Senha:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        
        <span class="style1">
            <asp:RequiredFieldValidator ID="valSenha" runat="server" 
                ControlToValidate="txtSenha" ErrorMessage="Campo Obrigatório" Font-Bold="True" 
                Font-Names="Segoe UI" Font-Size="XX-Small" ForeColor="Red"></asp:RequiredFieldValidator>
        </span>
        <br />
        
        &nbsp;
        <asp:TextBox ID="txtSenha" runat="server" CssClass="inputText" TabIndex="2" Width="322px"></asp:TextBox>
        <br />
        <br />

        &nbsp; Confirmação da Senha:&nbsp;
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSenha" ControlToValidate="txtConfirmacao" 
            ErrorMessage="A confirmação não confere com a senha" Font-Bold="True" 
            Font-Names="Segoe UI" Font-Size="XX-Small" ForeColor="Red"></asp:CompareValidator>
        <br />

        &nbsp;
        <asp:TextBox ID="txtConfirmacao" runat="server" CssClass="inputText" TabIndex="2" Width="322px"></asp:TextBox>

        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
        <br />

        &nbsp;<asp:Button ID="btnGravar" runat="server" CssClass="button" Text="Salvar" 
            Width="148px" height= "27px" UseSubmitBehavior="False"/>
     </p> 
   
</asp:Content>

<asp:Content ID="Conteudo3" runat="server" contentplaceholderid="ctnLogoBolao">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagens/logoBolaoMenu.png" />
</asp:Content>





