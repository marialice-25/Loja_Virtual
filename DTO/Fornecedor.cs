using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Loja_Virtual_Dev.DTO
{
    public class Fornecedor
    {
        private int id, produtosid;
        private string nome, cnpj, email, telefone, nomeRepresentante, telefoneRepresentante;

        public string TelefoneRepresentante { get => telefoneRepresentante; set => telefoneRepresentante = value; }
        public string NomeRepresentante { get => nomeRepresentante; set => nomeRepresentante = value; }
        public int Produtosid { get => produtosid; set => produtosid = value; }
        public int Id { get => id; set => id = value; }

        public string Telefone
        {
            set
            {
                if (value != string.Empty)
                {
                    this.telefone = value;
                }
                else
                {
                    throw new Exception("Campo de telefone obrigatório");
                }
            }
            get { return this.telefone; }
        }

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

        public string Cnpj
        {
            set
            {
                if (value != string.Empty)
                {
                    this.cnpj = value;
                }
                else
                {
                    throw new Exception("Campo de cnpj é obrigatório");
                }
            }
            get { return this.cnpj; }
        }
        public string Email
        {
            set
            {
                if (value != string.Empty)
                {
                    this.email = value;
                }
                else
                {
                    throw new Exception("Campo de email obrigatório");
                }
            }
            get { return this.email; }
        }
    }
}