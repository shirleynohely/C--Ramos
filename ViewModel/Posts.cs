using System;
using System.ComponentModel.DataAnnotations;
namespace Pre_Aceleracion_S1.ViewModel
{
    public class Posts
    {
        [Key]
        public string Title { get; set; }
        public DateTime Date { get; set; }

        public string Content { get; set; }

        public User User { get; set; }

    }
}
