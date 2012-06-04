using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NUnit.Framework;

namespace BolaoCopa.Classes
{
    [TestFixture]
    public class ApostasTest
    {
        [Test]
        public void Salvar()
        {
            // testa a inclusão de nova aposta no banco
            Apostas aposta = new Apostas();
            aposta.setApostador(1);
            aposta.setGols_A(1);
            aposta.setGols_B(1);
            aposta.setJogo(2);

            Assert.Greater(aposta.Salvar(), 0);
        }
    }
}