<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fornecedor.aspx.cs" Inherits="Loja_Virtual_Dev.UI.fornecedor1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Fornecedor</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</head>
<body class="text-center">
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
                            <asp:HyperLink ID="HyperLinkProdutos" NavigateUrl="~/UI/produtos.aspx" Text="Cadastro Produtos" runat="server"></asp:HyperLink>
                        </li>
                          <li>
                            <asp:HyperLink ID="HyperLinkFonecedor" NavigateUrl="~/UI/CadFornecedor.aspx" Text="Cadastro Fornecedores" runat="server"></asp:HyperLink>
                    </li>
                    </ul>
                </div>
            </nav>
        <main>
 <div class="form-group">
            <asp:GridView ID="GridProdutos" AutoGenerateColumns="False" BackColor="#FF66FF"
                SelectedRowStyle-BackColor="#ffccff"  
                OnRowEditing="GridProdutos_RowEditing"
                OnRowCancelingEdit="GridProdutos_RowCancelingEdit"
                OnRowUpdated="GridProdutos_RowUpdated"
                DataKeyNames="id"
                OnRowDeleting="GridProdutos_RowDeleting" runat="server">
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%# Eval("ID")%>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="NOME">
                        <ItemTemplate>
                            <asp:Label ID="lblNome" runat="server" Text='<%# Eval("NOME")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtNome" Text='<%# Eval("NOME")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CNPJ">
                        <ItemTemplate>
                            <asp:Label ID="labelDescricao" runat="server" Text='<%# Eval("CNPJ")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textDesc" Text='<%# Eval("CNPJ")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EMAIL">
                        <ItemTemplate>
                            <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("EMAIL")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtTelefone" Text='<%# Eval("TELEFONE")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="REPRESENTANTE">
                        <ItemTemplate>
                            <asp:Label ID="lblRepresentante" runat="server" Text='<%# Eval("NOME_REPRESENTANTE")%>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="TELEFONE">
                        <ItemTemplate>
                            <asp:Label ID="lblTelefone" runat="server" Text='<%# Eval("TELEFONE_REPRESENTANTE")%>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:CommandField ShowEditButton="true" ButtonType="Button" EditText="Editar" runat="server">
                    </asp:CommandField>

                    <asp:CommandField ShowDeleteButton="true" ButtonType="Button" DeleteText="Excluir" runat="server">
                    </asp:CommandField>
                     <asp:CommandField ShowEditButton="true" ButtonType="Button" EditText="Atualizar" runat="server">
                    </asp:CommandField>
                </Columns>
            </asp:GridView>

        </div>
        </main>
            <footer class="footer-copy-right">
            <p>CopyRight &copy; Desenvolvido por Maria Alice </p>
            <p>Todos os direitos respeitados</p>
        </footer>
    </form>
</body>
</html>
