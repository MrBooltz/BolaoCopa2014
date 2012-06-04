using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using NUnit.Framework;

namespace BolaoCopa.Classes
{
    [TestFixture]
    public class UsuarioTest
    {
        [Test]
        public void Autenticar()
        {
            // testa a autenticação do usuário
            Usuario usuario = new Usuario();
            usuario.setUsuario("daivecns@gmail.com");
            usuario.setSenha("121212");

            Assert.IsTrue(usuario.Autenticar());
        }
    }
}