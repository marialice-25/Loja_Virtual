﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="perfil.aspx.cs" Inherits="Loja_Virtual_Dev.UI.perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
                            <asp:HyperLink ID="HyperLinkProdutos" NavigateUrl="~/UI/produtos.aspx" Text="Produtos" runat="server"></asp:HyperLink>
                        </li>
                          <li>
                            <asp:HyperLink ID="HyperLinkFonecedor" NavigateUrl="~/UI/fornecedor.aspx" Text="Fronecedores" runat="server"></asp:HyperLink>
                    </li>
                    </ul>
                </div>
            </nav>
       <div>
            <h1>PERFIL</h1>
            <asp:Image ImageUrl="~/IMG/japao.jpg" AlternateText="Imagem não carregada" runat="server" Height="255px" Width="313px" />
        </div>

    </form>
</body>
</html>