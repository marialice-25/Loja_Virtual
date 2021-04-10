using System;
using System.Collections.Generic;
using System.Data;
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
                                      '{produtos.Quantidade}','{produtos.Validade}','{produtos.FornecedorID}','{produtos.CategoriaID}','{produtos.Imagem}');");

            con.ExecutarSQL(sql);
        }

        public void Excluir(produtos produtos)
        {
            string sql = string.Format($@"DELETE FROM PRODUTOS WHERE ID = {produtos.Id};");
            con.ExecutarSQL(sql);
        }

        public void Alterar(produtos produtos)
        {
            string sql = string.Format($@"UPDATE PRODUTOS SET NOME = '{produtos.Nome}',VALOR = '{produtos.Valor}',DESCRICAO ='{produtos.Descricao}',
                                        QUANTIDADE ='{produtos.Quantidade}',VALIDADE='{produtos.Validade}',FORNECEDORID'{produtos.FornecedorID}',
                                        CATEGORIAID='{produtos.CategoriaID}',IMAGEM='{produtos.Imagem}';");
            con.ExecutarSQL(sql);
        }

        public DataTable ConsultarID(int id)
        {
            string sql = string.Format($@"SELECT * FROM PRODUTOS WHERE ID = '{id}';");
            return con.ExecutarConsulta(sql);
        }
        public DataTable Pesquisar(string condicao)
        {
            string sql = string.Format($@"SELECT A.ID, A.NOME, A.DESCRICAO, A.VALOR,A.VALIDADE, B.NOME, B.DESCRICAO, C.NOME, C.NOME_REPRESENTANTE 
                                       FROM PRODUTOS AS A, CATEGORIA AS B, FORNECEDOR AS C WHERE A.CATEGORIAID = B.ID AND A.FORNECEDORID = C.ID
                                       AND {condicao} ORDER BY A.ID;");
            return con.ExecutarConsulta(sql);
        }
    }
}