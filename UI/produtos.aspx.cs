using Loja_Virtual_Dev.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Loja_Virtual_Dev.UI
{
    public partial class Produtos : System.Web.UI.Page
    {
        Produto produtosDTO = new Produto();
        ProdutoBLL produtosBLL = new ProdutoBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Exibir()
        {
            string pesquisa = "A.NOME LIKE '%" + txtPesquisa.Text + "%'";
            GridProdutos.DataSource = produtosBLL.Pesquisar(pesquisa);
            GridProdutos.DataBind();
        }
        protected void btnNovo_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadProduto.aspx");
        }
        protected void btnPesq_Click(object sender, EventArgs e)
        {
            Exibir();
        }
        protected void GridProdutos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            produtosDTO.Id = Convert.ToInt32(GridProdutos.DataKeys[e.RowIndex].Value.ToString());
            produtosBLL.Excluir(produtosDTO);
        }
        protected void GridProdutos_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridProdutos.PageIndex = e.NewEditIndex;
            Exibir();
        }
        protected void GridProdutos_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridProdutos.EditIndex = -1;
            Exibir();
        }
        protected void GridProdutos_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            produtosDTO.Id = Convert.ToInt32(GridProdutos.DataKeys[e.RowIndex].Value.ToString());
            produtosDTO.Nome = e.NewValues[1].ToString();
            produtosDTO.Descricao = e.NewValues[2].ToString();
            produtosDTO.Valor = Convert.ToDouble(e.NewValues[3].ToString());

            FileUpload fotoProduto = (FileUpload)GridProdutos.Rows[e.RowIndex].FindControl("fileupFoto");

            if (fotoProduto.HasFile)
            {
                String localImagem = Server.MapPath("~/IMG/Produtos/" + fotoProduto.FileName);
                fotoProduto.SaveAs(localImagem);
                produtosDTO.Imagem = fotoProduto.FileName.ToString();
            }

            produtosDTO.Quantidade = Convert.ToInt32(e.NewValues[6].ToString());
            produtosBLL.Alterar(produtosDTO);
            GridProdutos.EditIndex = -1;
            Exibir();
        }

    }
}