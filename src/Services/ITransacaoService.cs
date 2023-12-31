﻿using myfinance_web_netcore.Domain;
using myfinance_web_netcore.Models;

namespace myfinance_web_netcore.Services
{
    public interface ITransacaoService
    {
        IEnumerable<TransacaoModel> Listar();
        TransacaoModel RetornarRegistro(int id);
        void Salvar(TransacaoModel model);
        void Excluir(int id);
    }
}