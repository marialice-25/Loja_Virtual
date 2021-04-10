using Loja_Virtual_Dev.DAL;
using Loja_Virtual_Dev.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Loja_Virtual_Dev.BLL
{
    public class categoriaBLL
    {
        private MySqlDAL con = new MySqlDAL();

        public void Inserir(Categoria categoria)
        {
            string sql = string.Format($@"INSERT INTO CATEGORIA VALUES(NULL,'{categoria.Nome}','{categoria.Descricao}','{categoria.Produtosid}');");
            con.ExecutarSQL(sql);
        }
        public void Excluir(Categoria categoria)
        {
            string sql = string.Format($@"DELETE FROM CLIENTES WHERE ID = '{categoria.Id}';");
            con.ExecutarSQL(sql);
        }

        public void Alterar(Categoria categoria)
        {
            string sql = string.Format($@"UPDATE CLIENTES SET NOME='{categoria.Nome}',DESCRICAO='{categoria.Descricao}',PRODUTOS='{categoria.Produtosid}';");
            con.ExecutarSQL(sql);
        }

        public DataTable Pesquisar(string condicao)
        {
            string sql = string.Format($@"SELECT A.ID, A.NOME, A.DESCRICAO, A.VALOR,A.VALIDADE, B.NOME, B.DESCRICAO, C.NOME, C.CEP 
                                       FROM PRODUTOS AS A, CATEGORIA AS B, CLIENTE AS C WHERE A.CATEGORIAID = B.ID AND A.ID = C.PRODUTOSID
                                       AND {condicao} ORDER BY A.ID;");

            return con.ExecutarConsulta(sql);
        }

        public DataTable ConsultarID(int id)
        {
            string sql = string.Format($@"SELECT * FROM CATEGORIA WHERE ID = {id};");
            return con.ExecutarConsulta(sql);
        }
    }
}