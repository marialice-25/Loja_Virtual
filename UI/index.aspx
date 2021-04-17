﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Loja_Virtual_Dev.UI.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mercado Virtual</title>
</head>
<body>
    <form id="form1" runat="server">
             <nav>
                <div>
                    <ul>
                        <li>
                            <asp:HyperLink ID="HiperLinkInicial" NavigateUrl="~/UI/index.aspx" Text="Home" runat="server"></asp:HyperLink>
                        </li>
                        <li>
                            <asp:HyperLink ID="HiperLinkLogin" NavigateUrl="~/UI/login.aspx" Text="Login" runat="server"></asp:HyperLink>
                        </li>
                         <li>
                            <asp:HyperLink ID="HyperLinkProdutos" NavigateUrl="~/UI/produtos.aspx" Text="Produtos" runat="server"></asp:HyperLink>
                        </li>
                          <li>
                            <asp:HyperLink ID="HyperLinkFonecedor" NavigateUrl="~/UI/fornecedor.aspx" Text="Fronecedores" runat="server"></asp:HyperLink>
                    </li>
                    </ul>
                </div>
            </nav>
            <main>
                 <asp:Image ImageUrl="~/IMG/japaoInicio.jpg" AlternateText="Imagem não carregada" runat="server" Height="251px" Width="688px" />
            </main>
        <footer>
            <p>CopyRight &copy; Desenvolvido por Maria Alice </p>
            <p>Todos os direitos respeitados</p>
        </footer>
    </form>
</body>
</html>
