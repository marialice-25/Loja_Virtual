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
    public partial class fornecedor : System.Web.UI.Page
    {
        fornecedorBLL fornecedorBLL = new fornecedorBLL();
        Fornecedor fornecedorDTO = new Fornecedor();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            try
            {
                fornecedorDTO.Nome = txtNome.Text;
                fornecedorDTO.Cnpj = txtCnpj.Text;
                fornecedorDTO.Email = txtEmail.Text;
                fornecedorDTO.Telefone = txtTelefone.Text;
                fornecedorDTO.NomeRepresentante = txtNomeRepresentante.Text;
                fornecedorDTO.TelefoneRepresentante = txtTelefoneRepresentante.Text;
                fornecedorBLL.Inserir(fornecedorDTO);

                string mensagem = "Fornecedor cadastrado com sucesso!";
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
            txtNomeRepresentante.Text = "";
        }
    }
}