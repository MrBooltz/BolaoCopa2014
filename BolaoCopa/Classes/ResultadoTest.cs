using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NUnit.Framework;

namespace BolaoCopa.Classes
{
    [TestFixture]
    public class ResultadoTest
    {
        [Test]
        public void Salvar()
        {
            // testa a inclusão de novo resultado de partida no banco
            Resultado resultado = new Resultado();
            resultado.setGols_A(1);
            resultado.setGols_B(1);
            resultado.setJogo(2);

            Assert.Greater(resultado.Salvar(), 0);
        }
    }
}