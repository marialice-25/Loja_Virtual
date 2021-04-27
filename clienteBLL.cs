using Loja_Virtual_Dev.DAL;
using Loja_Virtual_Dev.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Loja_Virtual_Dev.BLL
{
    public class clienteBLL
    {
        private MySqlDAL con = new MySqlDAL();

        public Boolean Autenticar(string email, string senha)
        {
            string sql = string.Format($@"SELECT * FROM CLIENTES WHERE EMAIL='{email}' AND SENHA = '{senha}'");
            DataTable dt = con.ExecutarConsulta(sql);
            if (dt.Rows.Count == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public string RecuperarSenha(string email)
        {
            string sql = string.Format($@"SELECT * FROM CLIENTE WHERE EMAIL= ''{email}");
            DataTable dt = con.ExecutarConsulta(sql);
            if(dt.Rows.Count == 1)
            {
                return dt.Rows[0]["senha"].ToString();
            }
            else
            {
                return "Usuário não identificado";
            }
        }
        public void Inserir(cliente cliente)
        {
            string sql = string.Format($@"INSERT INTO CLIENTES VALUES(NULL, '{cliente.Nome}','{cliente.Telefone}','{cliente.Cidade}',
                                       '{cliente.Estado}','{cliente.Cep}','{cliente.Estado}','{cliente.Email}','{cliente.Senha}','{cliente.Endereco}');");
            con.ExecutarSQL(sql);
        }

        public void Excluir(cliente cliente)
        {
            string sql = string.Format($@"DELETE FROM CLIENTES WHERE ID = '{cliente.Id}';");
            con.ExecutarSQL(sql);
        }

        public void Alterar(cliente cliente)
        {
            string sql = string.Format($@"UPDATE CLIENTES SET NOME= '{cliente.Nome}',TELEFONE='{cliente.Telefone}',CLIENTE='{cliente.Cidade}',
                                       ESTADO='{cliente.Estado}',CEP='{cliente.Cep}',ESTADO='{cliente.Estado}',EMAIL='{cliente.Email}',
                                       SENHA='{cliente.Senha}',ENDERECO='{cliente.Endereco}'");
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
            string sql = string.Format($@"SELECT * FROM CLIENTE WHERE ID = {id};");
            return con.ExecutarConsulta(sql);
        }
    }
}