<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tablefornecedor.aspx.cs" Inherits="Loja_Virtual_Dev.UI.Tablefornecedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Fornecedor</title>
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
                            <asp:HyperLink ID="HiperLinkLogin" NavigateUrl="~/UI/login.aspx" Text="Login" runat="server"></asp:HyperLink>
                        </li>
                         <li>
                            <asp:HyperLink ID="HyperLinkProdutos" NavigateUrl="~/UI/produtos.aspx" Text="Cadastro Produtos" runat="server"></asp:HyperLink>
                        </li>
                          <li>
                            <asp:HyperLink ID="HyperLinkFonecedor" NavigateUrl="~/UI/TableFornecedor.aspx" Text="Tabela Fornecedores" runat="server"></asp:HyperLink>
                    </li>
                    </ul>
                </div>
            </nav>
        <main>
           <form id="form1" runat="server">
           <div class="form-group">
                           <div>
                <br/><br/>
                <asp:TextBox ID="txtPesquisa" placeholder="Insira o nome do produto" runat="server"></asp:TextBox><br/><br/>
                <asp:Button ID="btnPesq" Class="btn btn-lg btn-primary mb-4" runat="server" Text="PESQUISAR" OnClick="btnPesq_Click" />
                <asp:Button ID="btnNovo" runat="server" Class="btn btn-lg btn-primary mb-4" Text="INSERIR" OnClick="btnNovo_Click" />
            </div><br/>
            <asp:GridView ID="GridProdutos" AutoGenerateColumns="False" BackColor="#FF66FF"
                SelectedRowStyle-BackColor="#ffccff"  
                OnRowEditing="GridProdutos_RowEditing"
                OnRowCancelingEdit="GridProdutos_RowCancelingEdit"
                OnRowUpdating="GridProdutos_RowUpdating"
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
                            <asp:TextBox ID="txtNome" Text='<%# Bind("NOME")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CNPJ">
                        <ItemTemplate>
                            <asp:Label ID="lblDescricao" runat="server" Text='<%# Eval("CNPJ")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textDesc" Text='<%# Bind("CNPJ")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EMAIL">
                        <ItemTemplate>
                            <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("EMAIL")%>'>
                            </asp:Label>
                        </ItemTemplate>
                             <EditItemTemplate>
                            <asp:TextBox ID="txtEmail" Text='<%# Bind("EMAIL")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                            <ItemTemplate>
                            <asp:Label ID="lblTelefone" runat="server" Text='<%# Eval("TELEFONE")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtTelefone" Text='<%# Bind("TELEFONE")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="REPRESENTANTE">
                        <ItemTemplate>
                            <asp:Label ID="lblRepresentante" runat="server" Text='<%# Eval("NOME_REPRESENTANTE")%>'>
                            </asp:Label>
                        </ItemTemplate>
                              <EditItemTemplate>
                            <asp:TextBox ID="txtNomeRep" Text='<%# Bind("NOME_REPRESENTANTE")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="TELEFONE">
                        <ItemTemplate>
                            <asp:Label ID="lblTelefone" runat="server" Text='<%# Eval("TELEFONE_REPRESENTANTE")%>'>
                            </asp:Label>
                        </ItemTemplate>
                          <EditItemTemplate>
                            <asp:TextBox ID="txtNomeRep" Text='<%# Bind("TELEFONE_REPRESENTANTE")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                      <asp:CommandField ShowEditButton="true" HeaderText="EDITAR" ButtonType="Button" EditText="Editar" runat="server">
                    </asp:CommandField>

                    <asp:CommandField ShowDeleteButton="true" HeaderText="EDITAR" ButtonType="Button" DeleteText="Excluir" runat="server">
                    </asp:CommandField>
                     <asp:CommandField ShowEditButton="true" HeaderText="ATUALIZAR" ButtonType="Button" EditText="Atualizar" runat="server">
                    </asp:CommandField>
                </Columns>
            </asp:GridView>

        </div>
        </form>
        </main>
            <footer class="footer-copy-right">
            <p>CopyRight &copy; Desenvolvido por Maria Alice </p>
            <p>Todos os direitos respeitados</p>
        </footer>
</body>
</html>
