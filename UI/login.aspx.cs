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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            try
            {
                cliente cliente = new cliente();
                cliente.Email = txtEmail.Text;
                cliente.Senha = txtSenha.Text;

                clienteBLL clienteBLL = new clienteBLL();
                if (clienteBLL.Autenticar(cliente.Email, cliente.Senha))
                {
                    Session["email"] = cliente.Email;
                    msgOK.Visible = true;
                    msgOK.Text = "Seja bem vindo!";
                    Response.Redirect("perfil.aspx");
                }
                else
                {
                    msgErro.Visible = true;
                    msgErro.Text = "Cliente não encontrado";
                }

            }catch(Exception ex)
            {
                msgErro.Visible = true;
                msgErro.Text = ex.Message;

            }
        }

        protected void btnCadastro_Click(object sender, EventArgs e)
        {
            Response.Redirect("CadastroCliente.aspx");
        }

        protected void btnEsqueci_Click(object sender, EventArgs e)
        {
            try
            {
                cliente cliente = new cliente();
                cliente.Email = txtEmail.Text;
                cliente.Senha = txtSenha.Text;

                clienteBLL clienteBLL = new clienteBLL();
                msgOK.Visible = true;
                string senha = clienteBLL.RecuperarSenha(cliente.Email);
                msgOK.Text = senha;
                txtSenha.Text = senha;
            }
            catch(Exception ex)
            {
                msgErro.Visible = true;
                msgErro.Text = ex.Message;
            }

        }
    }
}