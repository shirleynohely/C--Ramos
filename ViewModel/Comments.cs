using System;
using System.ComponentModel.DataAnnotations;

namespace Pre_Aceleracion_S1.ViewModel
{
    public class Comments
    {
        [Key]

        public int Id { get; set; }
        public DateTime Date { get; set; }
        public string Comment { get; set; }
        public User User { get; set; }

    }
}
