package servicos;

import daos.ITopicoDao;
import daos.TopicoDao;
import dominio.entidades.Topico;

public class ServicoExibicaoTopico {
    private ITopicoDao topicoDao;

    public ServicoExibicaoTopico() {
        this.topicoDao = new TopicoDao();
    }

    public Topico recuperarTopico(int id) {
        return topicoDao.recuperar(id);
    }
}
