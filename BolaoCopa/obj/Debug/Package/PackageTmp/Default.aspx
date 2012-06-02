<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BolaoCopa.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Bolão da Copa - Brasil 2014
    </title>
    <link rel="Stylesheet" href="Styles/estilo.css" />
    <style type="text/css">
        #frmLogin
        {
            height: 101px;
        }
        #logoCopaEntrada
        {
            position:absolute;
            top:30px;
            left:9px;
        }
    </style>
</head>
<body>

    <form id="frmLogin" runat="server">

        <!-- logomarca do bolão da copa -->
        <div id="logoBolaoLogin">
            <asp:Image ID="imgLogoBolao" runat="server" Height="51px" ImageUrl="~/Imagens/logoBolao.png" Width="175px" 
                CssClass="logoBolaoLogin" />
        </div>
        <!-- fim da div de logomarca do bolão da copa -->

        <!-- div da imagem do box de login -->
        <div id="boxLogin">
            <asp:Image ID="imgBoxLogin" runat="server" ImageUrl="~/Imagens/boxLogin.png" 
                Height="257px" Width="525px" />

            <!-- div dos campos de login e cadastro de novos apostadores -->
            <div id="camposLogin">
            
                <!-- div do input do usuário -->
                <div id="inputUsuario">
                    <!-- label e validador do campo usuário -->
                    <asp:Label ID="lbUsuario" runat="server" CssClass="label" Text="E-mail:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="valUsuario" runat="server" ControlToValidate="txtUsuario" 
                        ErrorMessage="Campo Obrigatório" Font-Bold="True" Font-Names="Segoe UI" 
                        Font-Size="XX-Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;
                    <asp:RegularExpressionValidator ID="valEmail" runat="server" 
                        ControlToValidate="txtUsuario" ErrorMessage="E-mail inválido" Font-Bold="True" 
                        Font-Names="Segoe UI" Font-Size="X-Small" ForeColor="Red" 
                        SetFocusOnError="True" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />

                    <!-- input do usuário -->
                    <asp:TextBox ID="txtUsuario" runat="server" BorderStyle="Solid" 
                        BorderWidth="1px" ForeColor="Gray" Height="23px" Width="272px"></asp:TextBox>
                    <br />
                    <br />
                </div>
                <!-- fim da div do input do usuário -->

                <!-- div do input da senha -->
                <div id="inputSenha">
                    <!-- label e validar do campo senha -->
                    <asp:Label ID="lbSenha" runat="server" CssClass="label" Text="Senha :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:RequiredFieldValidator ID="valSenha" 
                        runat="server" ControlToValidate="txtSenha" 
                        ErrorMessage="Campo Obrigatório" Font-Bold="True" Font-Names="Segoe UI" 
                        Font-Size="XX-Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />

                    <!-- input da senha -->
                    <asp:TextBox ID="txtSenha" runat="server" BorderStyle="Solid" BorderWidth="1px" 
                        ForeColor="Gray" Height="23px" Width="272px" TextMode="Password"></asp:TextBox>
                </div>
                <!-- fim da div do input da senha -->

                <!-- div do botão entrar -->
                <div id="botaoEntrar">
                    <asp:Button ID="btnEntrar" runat="server" CssClass="button" Text="Entrar" 
                        BorderStyle="Solid" onclick="btnEntrar_Click" />
                </div>
                <!-- fim da div do botão entrar -->

                <div id="falhaAutenticacao">
                
                    <asp:Label ID="lbMensagem" runat="server" CssClass="label" ForeColor="Red"></asp:Label>
                
                </div>

                <!-- div do label de cadastro de novos apostadores -->
                <div id="cliqueAqui">
                    <asp:Label ID="lbCadastro" runat="server" CssClass="label" Font-Size="Small" 
                        Text="Ainda não é cadastrado? "></asp:Label>
                    <asp:HyperLink ID="hplCliqueAqui" runat="server" CssClass="hyperlink" 
                        NavigateUrl="~/CadastroApostador.aspx">Clique aqui.</asp:HyperLink>
                </div>
                <!-- fim da div do label de cadastro de novos apostadores -->

            </div>
            <!-- fim da div dos campos de login e cadastro de novos apostadores -->

            <!-- div do fundo da logomarca da copa do mundo fifa 2014 -->
            <div id="logoFundoCopaEntrada">
                
                <!-- div da imagem da logomarca -->
                <div id="logoCopaEntrada">
                    <asp:Image ID="imgLogoCopaEntrada" runat="server" 
                     ImageUrl="~/Imagens/logoCopaEntrada.png" Width="122px" Height="165px" />
                </div>

            </div>
            <!-- fim da div do fundo da logomarca da copa do mundo fifa 2014 -->

        </div>    
        <!-- fim da div do box de login -->

    </form>

</body>
</html>
