<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadProduto.aspx.cs" Inherits="Loja_Virtual_Dev.UI.CadProduto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cadastro produto</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <style>
        body{
            background-color: 	#ADD8E6;    
        }
    </style>
</head>
<body class="text-center">
          <nav>
                <div>
                    <ul>
                        <li>
                            <asp:HyperLink ID="HiperLinkInicial" NavigateUrl="~/UI/index.aspx" Text="Home" runat="server"></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="HiperLinkPerfil" NavigateUrl="~/UI/perfil.aspx" Text="Perfil" runat="server"></asp:HyperLink>
                        </li>
                         <li>
                            <asp:HyperLink ID="HyperLinkProdutos" NavigateUrl="~/UI/produtos.aspx" Text="Produtos" runat="server"></asp:HyperLink>
                        </li>
                    </ul>
                </div>
            </nav>
        <div>
            <asp:Image ImageUrl="~/IMG/japao.jpg" AlternateText="Imagem não carregada" runat="server" Height="255px" Width="313px" />
            <h1>CADASTRO DE PRODUTOS</h1>
        </div>
    <main>
        <form id="form1" runat="server">

            <asp:HiddenField ID="id" runat="server" />
        <div>
            <asp:Label for="txtNome" Text="Nome: " runat="server"></asp:Label>
            <asp:TextBox ID="txtNome" type="text" runat="server"></asp:TextBox>
        </div>
                <div>
            <asp:Label for="txtValor" Text="Valor: " runat="server"></asp:Label>
            <asp:TextBox ID="txtValor" type="text" runat="server"></asp:TextBox>
        </div>
                  <div> 
            <asp:Label for="txtDescricao" Text="Descricao: " runat="server"></asp:Label>
            <asp:TextBox ID="txtDescricao" TextMode="MultiLine" Columns="30" Rows="4" runat="server"></asp:TextBox>
        </div>
                <div>
            <asp:Label for="txtQuantidade" Text="Quantidade: " runat="server"></asp:Label>
            <asp:TextBox ID="txtQuantidade" type="text" runat="server"></asp:TextBox>
        </div>
                  <div>
            <asp:Label for="txtFornecedor" Text="Fornecedor: " runat="server"></asp:Label>
            <asp:DropDownList ID="txtFornecedor" runat="server"></asp:DropDownList>
        </div>
                  <div>
            <asp:Label for="txtCategoria" Text="Categoria: " runat="server"></asp:Label>
            <asp:DropDownList ID="txtCategoria" runat="server"></asp:DropDownList>
        </div>
               <div>
            <asp:Label for="Imagem" Text="Imagem: " runat="server"></asp:Label>
            <asp:FileUpload ID="Imagem" runat="server"></asp:FileUpload>
        </div>
                 <div>
            <asp:Label for="validade" Text="Validade: " runat="server"></asp:Label>
            <asp:TextBox ID="validade" type="text" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Button Text="CADASTRAR PRODUTO" ID="btnCadastrar" runat="server" OnClick="btnCadastrar_Click" />
            <asp:Button ID="btnCancelar" runat="server" Text="CANCELAR" OnClick="btnCancelar_Click" />
        </div>
                     <div class="form-group">
                    <asp:Label Text="" ID="msgOK" ForeColor="Green" Visible="false" class="col-sm-2 col-form-label" runat="server"></asp:Label>
                    <asp:Label Text="" ID="msgErro" ForeColor="Red" Visible="false" class="col-sm-2 col-form-label" runat="server"></asp:Label>
                    </div>
            </form>
    </main>
                <footer class="footer-copy-right">
            <p>CopyRight &copy; Desenvolvido por Maria Alice </p>
            <p>Todos os direitos respeitados</p>
        </footer>
</body>
</html>
