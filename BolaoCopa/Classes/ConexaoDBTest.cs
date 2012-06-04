using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NUnit.Framework;
using System.Data.SqlClient;

namespace BolaoCopa.Classes
{
    [TestFixture]
    public class ConexaoDBTest
    {
        [Test]
        public void ConectarDB()
        {
            // testa a conexão com o banco de dados
            ConexaoBD conexao = new ConexaoBD();
            Assert.IsNotNull(conexao.Conectar());
        }

        [Test]
        public void ExecutarDML()
        {
            // testa a execução de uma consulta DML no banco
            ConexaoBD conexao = new ConexaoBD();
            conexao.Conectar();
            Assert.IsNotNull(conexao.ExecutarDDL("SELECT * FROM apostadores"));
        }

        [Test]
        public void ExecutarDDL()
        {
            // testa a execução de uma consulta DDL no banco
            ConexaoBD conexao = new ConexaoBD();
            conexao.Conectar();
            Assert.GreaterOrEqual(conexao.ExecutarDDL("UPDATE estados SET nome = 'MINAS GERAIS' WHERE sigla = 'MG'"), 0);
        }
    }
}