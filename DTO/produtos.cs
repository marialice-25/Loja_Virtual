using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Loja_Virtual_Dev.DTO
{
    public class produtos
    {
        private int id, quantidade, categoriaID, fornecedorID;
        private string nome, descricao, imagem, validade;
        private double valor;

        public int Id { get => id; set => id = value; }
        public int FornecedorID { get => fornecedorID; set => fornecedorID = value; }
        public double Valor { get => valor; set => valor = value; }
        public string Imagem { get => imagem; set => imagem = value; }

        public string Validade { get => validade; set => validade = value; }

        public string Nome
        {
            set
            {
                if(value != string.Empty)
                {
                    this.nome = value;
                }
                else
                {
                    throw new Exception("Campo de produto é obrigatório");
                }
            }
            get { return this.nome; }
        }

        public string Descricao
        {
            set
            {
                if(value != string.Empty)
                {
                    this.descricao = value;
                }
                else
                {
                    throw new Exception("Campo de descrição é obrigatório");
                }
            }
            get { return this.descricao; }
        }

        public int Quantidade
        {
            set
            {
                if(value != 0)
                {
                    this.quantidade = value;
                }
                else
                {
                    throw new Exception("Campo de quantidade é obrigatório");
                }
            }
            get { return this.quantidade; }
        }

        public int CategoriaID
        {
            set
            {
                if (value != 0)
                {
                    this.categoriaID = value;
                }
                else
                {
                    throw new Exception("Campo de categoria é obrigatório");
                }
            }
            get { return this.categoriaID; }
        }
    }
}