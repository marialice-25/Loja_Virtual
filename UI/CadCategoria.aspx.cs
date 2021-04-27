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
    public partial class CadCategoria : System.Web.UI.Page
    {
        categoriaBLL catBLL = new categoriaBLL();
        Categoria catDTO = new Categoria();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            catDTO.Nome = txtNome.Text;
            catDTO.Descricao = txtDescricao.Text;
            catBLL.Inserir(catDTO);

            string mensagem = "Categoria inserido com sucesso!";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('" + mensagem + "')", true);
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            txtNome.Text = "";
            txtDescricao.Text = "";
        }

    }
}