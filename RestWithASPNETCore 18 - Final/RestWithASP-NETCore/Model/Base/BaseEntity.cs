using System.ComponentModel.DataAnnotations.Schema;

namespace RestWithASP_NETCore.Model.Base
{
    // Contrato entre atributos
    // e a estrutura da tabela
    // [DataContract]
    public class BaseEntity
    {
        [Column("id")]
        public long? Id { get; set; }
    }
}

