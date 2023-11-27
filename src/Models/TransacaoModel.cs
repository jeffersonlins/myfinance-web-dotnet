using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace myfinance_web_netcore.Models
{
    public class TransacaoModel
    {
        public int? Id { get; set; }

        public string? Descricao { get; set; }

        public int IdPlanoConta { get; set; }

        public DateTime Data { get; set; }

        [Required]
        public double Valor { get; set; }

        [NotMapped]
        public string? DescPlanoConta { get; set; }

        public IEnumerable<PlanoContaModel>? PlanocontaList { get; set; }

        public IEnumerable<SelectListItem>? PlanoContaSelectList { get; set; }
    }
}