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
    public partial class cadastro : System.Web.UI.Page
    {
        cliente clienteDTO = new cliente();
        clienteBLL clienteBLL = new clienteBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            try
            {
                clienteDTO.Nome = txtNome.Text;
                clienteDTO.Telefone = txtTelefone.Text;
                clienteDTO.Cidade = txtCidade.Text;
                clienteDTO.Estado = txtEstado.Text;
                clienteDTO.Cep = txtCep.Text;
                clienteDTO.Sexo = txtSexo.SelectedValue.ToString();
                clienteDTO.Email = txtEmail.Text;
                clienteDTO.Senha = txtSenha.Text;
                clienteDTO.Endereco = txtEndereco.Text;
                clienteBLL.Inserir(clienteDTO);

                string mensagem = "Cliente cadastrado com sucesso!";
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + mensagem + "')", true);

            }
            catch (Exception ex)
            {
                msgErro.Visible = true;
                msgErro.Text = ex.Message;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

    }
}