using Loja_Virtual_Dev.BLL;
using Loja_Virtual_Dev.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Loja_Virtual_Dev.UI
{
    public partial class Tablefornecedor : System.Web.UI.Page
    {
        Fornecedor fornecedorDTO = new Fornecedor();
        fornecedorBLL fornecedor = new fornecedorBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            Exibir();
        }
        public void Exibir()
        {
            string pesquisa = "C.NOME LIKE '%" + txtPesquisa.Text + "%'";
            GridProdutos.DataSource = fornecedor.ConsultarID();
            GridProdutos.DataBind();
        }
        protected void btnNovo_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadFornecedor.aspx");
        }
        protected void btnPesq_Click(object sender, EventArgs e)
        {
            Exibir();
        }
        protected void GridProdutos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            fornecedorDTO.Id = Convert.ToInt32(GridProdutos.DataKeys[e.RowIndex].Value.ToString());
            fornecedor.Excluir(fornecedorDTO);
            Exibir();
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
            fornecedorDTO.Id = Convert.ToInt32(GridProdutos.DataKeys[e.RowIndex].Value.ToString());
            fornecedorDTO.Nome = e.NewValues[1].ToString();
            fornecedorDTO.Cnpj = e.NewValues[2].ToString();
            fornecedorDTO.Email = e.NewValues[3].ToString();
            fornecedorDTO.Telefone = e.NewValues[4].ToString();
            fornecedorDTO.NomeRepresentante = e.NewValues[5].ToString();
            fornecedorDTO.TelefoneRepresentante = e.NewValues[6].ToString();

            fornecedor.Alterar(fornecedorDTO);
            GridProdutos.EditIndex = -1;
            Exibir();
        }

    }
}