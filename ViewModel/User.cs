using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;


namespace Pre_Aceleracion_S1.ViewModel
{
    public class User
    {
        [Key]
        public int Id { get; set; }
        public string Name { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public ICollection<Posts> Posts { get; set; }
        public ICollection<Comments> Comments { get; set; }

    }
}
