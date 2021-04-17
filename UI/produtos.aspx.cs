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
        public object Nome { get; internal set; }
        public string Descricao { get; internal set; }
        public string Valor { get; internal set; }
        public int CategoriaID { get; internal set; }
        public int FornecedorID { get; internal set; }
        public int Quantidade { get; internal set; }
        public object Imagem { get; internal set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        internal void Inserir(Produtos produtos)
        {
            throw new NotImplementedException();
        }
    }
}