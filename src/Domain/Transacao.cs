namespace myfinance_web_netcore.Domain
{
    public class Transacao
    {
        public int? Id { get; set; }
        public required string Descricao { get; set; }
        public DateTime Data { get; set; }
        public int IdPlanoConta { get; set; }
        public required double Valor { get; set; }

    }
}