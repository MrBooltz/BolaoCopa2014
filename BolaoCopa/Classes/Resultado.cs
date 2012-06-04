using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace BolaoCopa.Classes
{
    public class Resultado
    {
        // atributos privados da classe
        Int32 Jogo;
        Int32 Gols_A;
        Int32 Gols_B;
        String MsgErro;

        // método de get da propriedade Jogo
        public Int32 getJogo()
        {
            return Jogo;
        }

        // método de set da propriedade Jogo
        public void setJogo(Int32 jogo)
        {
            Jogo = jogo;
        }

        // método de get da propriedade Gols_A
        public Int32 getGols_A()
        {
            return Gols_A;
        }

        // método de set da propriedade Gols_B
        public void setGols_A(Int32 gols)
        {
            Gols_A = gols;
        }

        // método de get da propriedade Gols_B
        public Int32 getGols_B()
        {
            return Gols_B;
        }

        // método de set da propriedade Gols_B
        public void setGols_B(Int32 gols)
        {
            Gols_B = gols;
        }

        // método de get da propriedade Erro
        public String getErro()
        {
            return MsgErro;
        }

        // método privado da classe que retorna se o resultado do jogo já está cadastrado no banco
        private Boolean Cadastrado()
        {
            // inicializa o retorno do método
            Boolean retorno = false;

            // instancia a conexao no banco 
            ConexaoBD conexao = new ConexaoBD();

            // se não conseguiu se conectar no banco, retorna a mensagem de erro
            if (conexao.Conectar() == null)
            {
                MsgErro = conexao.getErro();
            }
            else
            {
                // realiza a consulta
                SqlDataReader consulta = conexao.ExecutarDML("SELECT cod_resultado FROM resultados WHERE jogo = " + Jogo.ToString());

                // seta o retorno do método
                retorno = consulta.HasRows;
            }

            // retorno do método
            return retorno;
        }

        // método privado da classe responsável por retornar a instrução sql correta para persistência dos dados da classe no banco
        // de dados
        private String InstrucaoSQL()
        {
            // conterá a instrução SQL responsável por persistir os dados no banco
            String sql = "";

            // o resultado da partida ainda não foi gravado no banco. Deve-se portanto, inserí-lo
            if (!Cadastrado())
            {
                // define a instrução sql de inclusão dos dados
                sql = "INSERT INTO resultados VALUES (" + Jogo.ToString() + ", " + Gols_A.ToString() + ", " + Gols_B.ToString() + ")";
            }
            // o resultado da partida já está gravado. Deve-se portanto, atualizá-lo
            else
            {
                // define a instrução sql de inclusão dos dados
                sql = "UPDATE resultados SET gols_a = " + Gols_A.ToString() + ", gols_b = " + Gols_B.ToString() + " WHERE jogo = " + Jogo.ToString();
            }

            // retorno do método
            return sql;
        }


        // método público responsável por persistir os dados da partida no banco de dados da aplicação. Esse método retorna um
        // inteiro indicando a quantidade de registros atualizados durante a persistência dos dados no banco.
        public Int32 Salvar()
        {
            // inicializa o retorno do método
            Int32 retorno = 0;

            // instancia a conexão com o banco
            ConexaoBD conexao = new ConexaoBD();
            if (conexao.Conectar() != null)
            {
                // executa a instrução sql correta
                retorno = conexao.ExecutarDDL(InstrucaoSQL());

                // se não conseguiu realizar a atualização dos dados, retorna a mensagem de erro
                if (retorno == 0) 
                    MsgErro = conexao.getErro();
            }
            else
            {
                // retorna a mensagem de erro
                MsgErro = conexao.getErro();
            }

            // retorno do méotod
            return retorno;
        }


        // construtor padrão da classe
        public Resultado()
        {
            // inicializa os campos da classe
            Gols_A = -1;
            Gols_B = -1;
            MsgErro = "";
        }
    }
}