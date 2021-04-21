<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroCliente.aspx.cs" Inherits="Loja_Virtual_Dev.UI.cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cadastro</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</head>
<body class="text-center">
                 <nav>
                <div>
                    <ul>
                        <li>
                            <asp:HyperLink ID="HiperLinkInicial" NavigateUrl="~/UI/index.aspx" Text="Home" runat="server"></asp:HyperLink>
                        </li>
                    </ul>
                </div>
            </nav>
    <form id="form1" runat="server">
        <div>
            <asp:Image ImageUrl="~/IMG/japao.jpg" AlternateText="Imagem não carregada" runat="server" Height="255px" Width="313px" />
            <h1>CADASTRO</h1>
        </div>
        <div>
            <asp:Label for="txtNome" Text="Nome: " runat="server"></asp:Label>
            <asp:TextBox ID="txtNome" type="text" runat="server"></asp:TextBox>
        </div>
                <div>
            <asp:Label for="txtTelefone" Text="Telefone: " runat="server"></asp:Label>
            <asp:TextBox ID="txtTelefone" type="text" runat="server"></asp:TextBox>
        </div>
                <div>
            <asp:Label for="txtEndereco" Text="Endereço: " runat="server"></asp:Label>
            <asp:TextBox ID="txtEndereco" type="text" runat="server"></asp:TextBox>
        </div>
                <div>
            <asp:Label for="txtCidade" Text="Cidade: " runat="server"></asp:Label>
            <asp:TextBox ID="txtCidade" type="text" runat="server"></asp:TextBox>
        </div>
                  <div>
            <asp:Label for="txtEstado" Text="Estado: " runat="server"></asp:Label>
            <asp:TextBox ID="txtEstado" type="text" runat="server"></asp:TextBox>
        </div>
                      <div>
            <asp:Label for="txtCep" Text="Cep: " runat="server"></asp:Label>
            <asp:TextBox ID="txtCep" type="text" runat="server"></asp:TextBox>
        </div>
                  <div>
            <asp:Label for="txtSexo" Text="Sexo: " runat="server"></asp:Label>
            <asp:DropDownList runat="server" ID="txtSexo">
                <asp:ListItem>Feminino</asp:ListItem>
                <asp:ListItem>Masculino</asp:ListItem>
                <asp:ListItem>Outro</asp:ListItem>
                      </asp:DropDownList> 
        </div>
                   <div>
            <asp:Label for="txtIdade" Text="Idade: " runat="server"></asp:Label>
            <asp:TextBox ID="txtIdade" type="text" runat="server"></asp:TextBox>
        </div>
                  <div>
            <asp:Label for="txtEmail" Text="Email: " runat="server"></asp:Label>
            <asp:TextBox ID="txtEmail" type="email" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label for="txtSenha" Text="Senha: " runat="server"></asp:Label>
            <asp:TextBox ID="txtSenha" type="password" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button Text="CADASTRAR" ID="btnCadastrar" runat="server" OnClick="btnCadastrar_Click" />
            <asp:Button Text="LOGIN" ID="btnLogin" runat="server"  OnClick="btnLogin_Click"/>
        </div>
            <div class="form-group">
                    <asp:Label Text="" ID="msgOK" ForeColor="Green" Visible="false" class="col-sm-2 col-form-label" runat="server"></asp:Label>
                    <asp:Label Text="" ID="msgErro" ForeColor="Red" Visible="false" class="col-sm-2 col-form-label" runat="server"></asp:Label>
              </div>
            </form>
                <footer class="footer-copy-right">
            <p>CopyRight &copy; Desenvolvido por Maria Alice </p>
            <p>Todos os direitos respeitados</p>
        </footer>
</body>
</html>
