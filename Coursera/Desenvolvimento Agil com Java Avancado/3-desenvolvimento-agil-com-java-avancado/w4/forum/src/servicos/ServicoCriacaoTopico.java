package servicos;

import daos.ITopicoDao;
import daos.IUsuarioDao;
import daos.TopicoDao;
import daos.UsuarioDao;
import dominio.entidades.Topico;

public class ServicoCriacaoTopico {
    private ITopicoDao topicoDao;
    private IUsuarioDao usuarioDao;

    public ServicoCriacaoTopico() {
        this.topicoDao = new TopicoDao();
        this.usuarioDao = new UsuarioDao();
    }

    public void criar(String login, String titulo, String conteudo) {
        topicoDao.inserir(new Topico(login, titulo, conteudo));
        pontuarUsuario(login);
    }

    private void pontuarUsuario(String login) {
        final int PONTOS_POR_TOPICO = 10;
        usuarioDao.adicionarPontos(login, PONTOS_POR_TOPICO);
    }
}
