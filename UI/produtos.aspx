<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="produtos.aspx.cs" Inherits="Produtos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Produtos</title>
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
    </form>
</body>
</html>
