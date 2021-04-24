using Loja_Virtual_Dev.DTO;
using Loja_Virtual_Dev.BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Loja_Virtual_Dev.UI
{
    public partial class CadProduto : System.Web.UI.Page
    {
        Produto produtos = new Produto();
        ProdutoBLL produtosBLL = new ProdutoBLL();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            try
            {
                produtos.Nome = txtNome.Text;
                produtos.Descricao = txtDescricao.Text;
                produtos.Valor = Convert.ToDouble(txtValor.Text);
                produtos.CategoriaID = Convert.ToInt32(txtCategoria.SelectedValue.ToString());
                produtos.FornecedorID = Convert.ToInt32(txtFornecedor.SelectedValue.ToString());
                produtos.Quantidade = Convert.ToInt32(txtQuantidade.Text);
                produtos.Imagem = Imagem.FileName.ToString();
                produtosBLL.Inserir(produtos);
                string localFoto = Server.MapPath("/IMG/Produtos/" + produtos.Imagem);
                Imagem.SaveAs(localFoto);

                string mensagem = "Produto inserido com sucesso!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + mensagem + "')", true);

            }
            catch (Exception ex)
            {
                msgErro.Visible = true;
                msgErro.Text = ex.Message;
            }

        }
        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            txtNome.Text = "";
            txtDescricao.Text = "";
            txtCategoria.SelectedIndex = -1;
        }
    }
}