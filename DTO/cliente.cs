using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Loja_Virtual_Dev.DTO
{
    public class cliente
    {
        private string nome, telefone, endereco, cidade, estado, sexo, email, senha, cep;
        private int id, idade, produtosid;

        public string Sexo { get => sexo; set => sexo = value; }
        public int Idade { get => idade; set => idade = value; }
        public int Id { get => id; set => id = value; }
        public int Produtosid { get => produtosid; set => produtosid = value; }
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

        public string Endereco
        {
            set
            {
                if (value != string.Empty)
                {
                    this.endereco = value;
                }
                else
                {
                    throw new Exception("Campo de endereco obrigatório");
                }
            }
            get { return this.endereco; }
        }

        public string Estado
        {
            set
            {
                if (value != string.Empty)
                {
                    this.estado = value;
                }
                else
                {
                    throw new Exception("Campo de estado obrigatório");
                }
            }
            get { return this.estado; }
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

        public string Senha
        {
            set
            {
                if (value != string.Empty)
                {
                    this.senha = value;
                }
                else
                {
                    throw new Exception("Campo de senha obrigatório");
                }
            }
            get { return this.senha; }
        }

        public string Cep
        {
            set
            {
                if (value != string.Empty)
                {
                    this.cep = value;
                }
                else
                {
                    throw new Exception("Campo de cep obrigatório");
                }
            }
            get { return this.cep; }
        }
        public string Cidade
        {
            set
            {
                if (value != string.Empty)
                {
                    this.cidade = value;
                }
                else
                {
                    throw new Exception("Campo de cidade obrigatório");
                }
            }
            get { return this.cidade; }
        }
    }
}