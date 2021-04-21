using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Loja_Virtual_Dev.DAL
{
    public class MySqlDAL
    {
        private static string server = "localhost";
        private static string database = "loja_virtual";
        private static string user = "root";
        private static string password = "";

        private string stringConexao = "Server= " + server + "; Database= " + database + "; User= " + user + "; Password= " + password;

        public MySqlConnection conexao;

        public void Conectar()
        {
            try
            {
                conexao = new MySqlConnection(stringConexao);
                conexao.Open();
            }
            catch (Exception e)
            {
                throw new Exception("Não foi possível conectar ao banco de dados. Erro:" + e.Message);
            }
        }

        public void ExecutarSQL(string sql)
        {
            try
            {
                Conectar();
                MySqlCommand comando = new MySqlCommand(sql, conexao);
                comando.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                throw new Exception("Não foi possível executar a instrução do banco de dados. Erro:" + e.Message);
            }
            finally
            {
                conexao.Close();
            }
        }

        public DataTable ExecutarConsulta(string sql)
        {
            try
            {
                Conectar();
                DataTable dt = new DataTable();
                MySqlDataAdapter dados = new MySqlDataAdapter(sql, conexao);
                dados.Fill(dt);
                return dt;
            }
            catch(Exception e)
            {
                throw new Exception("Não foi possível executar a consulta no banco de dados. Erro:" + e.Message);
            }
            finally
            {
                conexao.Close();
            }
        }
    }
}