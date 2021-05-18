<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="produtos.aspx.cs" Inherits="Loja_Virtual_Dev.UI.Produtos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Produtos</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
        <style>
        body{
            background-color: 	#ADD8E6;    
        }
    </style>
</head>
<body class="text-center">
             <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div>
                    <ul>
                        <li class="nav-item">
                            <asp:HyperLink ID="HiperLinkInicial" NavigateUrl="~/UI/index.aspx" Text="Home" runat="server"></asp:HyperLink>
                        </li>
                        <li class="nav-item">
                            <asp:HyperLink ID="HiperLinkLogin" NavigateUrl="~/UI/login.aspx" Text="Login" runat="server"></asp:HyperLink>
                        </li>
                         <li class="nav-item">
                            <asp:HyperLink ID="HyperLinkProdutos" NavigateUrl="~/UI/CadProduto.aspx" Text="Cadastro Produtos" runat="server"></asp:HyperLink>
                        </li>
                          <li class="nav-item">
                            <asp:HyperLink ID="HyperLinkFonecedor" NavigateUrl="~/UI/CadFornecedor.aspx" Text="Fornecedores" runat="server"></asp:HyperLink>
                    </li>
                    </ul>
                </div>
            </nav>
        <form id="form1" class="form-signin" runat="server">
        <main>
            <div>
                <br/><br/>
                <asp:TextBox ID="txtPesquisa" placeholder="Insira o nome do produto" runat="server"></asp:TextBox><br/><br/>
                <asp:Button ID="btnPesq" Class="btn btn-lg btn-primary mb-4" runat="server" Text="PESQUISAR" OnClick="btnPesq_Click" />
                <asp:Button ID="btnNovo" runat="server" Class="btn btn-lg btn-primary mb-4" Text="INSERIR" OnClick="btnNovo_Click" />
            </div><br/>
         <div class="form-group">
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
                    <asp:TemplateField HeaderText="VALOR">
                        <ItemTemplate>
                            <asp:Label ID="lblValor" runat="server" Text='<%# Eval("VALOR")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtValor" Text='<%# Bind("VALOR")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DESCRICAO">
                        <ItemTemplate>
                            <asp:Label ID="lblDescricao" runat="server" Text='<%# Eval("DESCRICAO")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtDescricao" Text='<%# Bind("DESCRICAO")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                        <asp:TemplateField HeaderText="QUANTIDADE">
                        <ItemTemplate>
                            <asp:Label ID="lblQuant" runat="server" Text='<%# Eval("QUANTIDADE")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textQuant" Text='<%# Bind("QUANTIDADE")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="VALIDADE">
                        <ItemTemplate>
                            <asp:Label ID="lblValidade" runat="server" Text='<%# Eval("VALIDADE")%>'>
                            </asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="textVAlidade" Text='<%# Bind("VALIDADE")%>' runat="server">
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                         <asp:TemplateField HeaderText="FORNECEDOR">
                        <ItemTemplate>
                            <asp:Label ID="lblFornecedor" runat="server" Text='<%# Eval("FORNECEDORID")%>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CATEGORIA">
                        <ItemTemplate>
                            <asp:Label ID="lblCat" runat="server" Text='<%# Eval("CATEGORIAID")%>'>
                            </asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                            <asp:TemplateField HeaderText="IMAGEM">
                        <ItemTemplate>
                            <asp:Image ID="lblFoto" runat="server" ImageUrl='<%# "~/IMG/Produtos/" + Eval("IMAGEM")%>' Width="200" Height="150"></asp:Image>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:FileUpload ID="fileupFoto" runat="server">
                            </asp:FileUpload>
                        </EditItemTemplate>

                    </asp:TemplateField>
                      <asp:CommandField HeaderText="EDITAR" ShowEditButton="true" ButtonType="Button" EditText="Editar" runat="server">
                    </asp:CommandField>
                    <asp:CommandField HeaderText="EXCLUIR" ShowDeleteButton="true" ButtonType="Button" DeleteText="Excluir" runat="server">
                    </asp:CommandField>
                     <asp:CommandField HeaderText="ATUALIZAR" ShowEditButton="true" ButtonType="Button" EditText="Atualizar" runat="server">
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
