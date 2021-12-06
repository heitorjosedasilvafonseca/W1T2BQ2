using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace W1T2BQ2
{
    public partial class FuncionariosInclusao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            MySqlCommand cmd = new MySqlCommand();
            try
            {
                cmd.Connection = Conexao.Connection;
                cmd.CommandText = @"insert into funcionario
                                    (nome, sexo, dataNasc, carteira, fixo, celular, email, endereco, bairro, cidade, uf)
                                    values
                                    (@nome, @sexo, @dataNasc, @carteira, @fixo, @celular, @email, @endereco, @bairro, @cidade, @uf)";

                cmd.Parameters.AddWithValue("nome", txtNome.Text);
                cmd.Parameters.AddWithValue("sexo", txtSexo.Text);
                cmd.Parameters.AddWithValue("dataNasc", txtDataNasc.Text);
                cmd.Parameters.AddWithValue("fixo", txtCelular.Text);
                cmd.Parameters.AddWithValue("celular", txtCelular.Text);
                cmd.Parameters.AddWithValue("carteira", txtCarteira.Text);
                cmd.Parameters.AddWithValue("email", txtEmail.Text);
                cmd.Parameters.AddWithValue("endereco", txtEndereco.Text);
                cmd.Parameters.AddWithValue("bairro", txtBairro.Text);
                cmd.Parameters.AddWithValue("cidade", txtCidade.Text);
                cmd.Parameters.AddWithValue("uf", txtUF.Text);

                Conexao.Conectar();
                cmd.ExecuteNonQuery();
                Response.Redirect("home.aspx");
            }
            catch (Exception ex)
            {
                lblResultado.Text = $"Falha: {ex.Message}";
            }
            finally
            {
                Conexao.Desconectar();
            }
        }

    }
}