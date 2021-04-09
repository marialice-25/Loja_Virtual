using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Loja_Virtual_Dev.DTO
{
    public class Categoria
    {
        private int id;
        private string nome, descricao;
        public string Descricao { get => descricao; set => descricao = value; }

        public int Id { get => id; set => id = value; }

        public string Nome
        {
            set
            {
                if (value != string.Empty)
                {
                    this.nome = value;
                }
                else
                {
                    throw new Exception("Campo de nome é obrigatório");
                }
            }
            get { return this.nome; }
        }
    }
}