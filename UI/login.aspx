<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Loja_Virtual_Dev.UI.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</head>
<body class="text-center">
    <form id="form1" runat="server">
        <div>
            <asp:Image ImageUrl="~/IMG/japao.jpg" AlternateText="Imagem não carregada" runat="server" Height="255px" Width="313px" />
            <h1>LOGIN</h1>
        </div>
        <div>
            <asp:Label for="txtEmail" Text="Email" runat="server"></asp:Label>
            <asp:TextBox ID="txtEmail" type="email" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label for="txtSenha" Text="Senha" runat="server"></asp:Label>
            <asp:TextBox ID="txtSenha" type="password" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button Text="ENTRAR" ID="btnEntrar" runat="server" OnClick="btnEntrar_Click" />
        </div>
         <div>
            <p><asp:LinkButton Text="Cadastrar" ID="btnCadastro" runat="server" OnClick="btnCadastro_Click"></asp:LinkButton></p>
             <p><asp:LinkButton Text="Esqueci minha senha" ID="btnEsqueci" runat="server" OnClick="btnEsqueci_Click"></asp:LinkButton></p>
        </div>
        <div>
            <asp:Label ID="msgOK" Visible="false" ForeColor="Green" runat="server"></asp:Label>
            <asp:Label ID="msgErro" Visible="false" ForeColor="Red" runat="server"></asp:Label>
        </div>
            </form>
                <footer class="footer-copy-right">
            <p>CopyRight &copy; Desenvolvido por Maria Alice </p>
            <p>Todos os direitos respeitados</p>
        </footer>
</body>
</html>
