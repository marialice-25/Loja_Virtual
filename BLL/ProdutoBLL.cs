using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Loja_Virtual_Dev.DAL;

namespace Loja_Virtual_Dev.DTO
{
    public class ProdutoBLL
    {
        private MySqlDAL con = new MySqlDAL();

        public void Inserir(produtos produtos)
        {
            string sql = string.Format($@"INSERT INTO PRODUTOS VALUES(NULL,'{produtos.Nome}', '{produtos.Valor}', '{produtos.Descricao}', 
                                      '{produtos.Quantidade}','{produtos.FornecedorID}','{produtos.CategoriaID}','{produtos.Imagem}')");

            con.ExecutarSQL(sql);
        }
    }
}
