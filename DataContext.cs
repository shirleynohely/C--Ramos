using Microsoft.EntityFrameworkCore;
using Pre_Aceleracion_S1.ViewModel;

namespace Pre_Aceleracion_S1
{
    public class DataContext: DbContext
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("Server=NOHELY-PC\\SQLEXPRESS;Database=BDBlog;Trusted_Connection=True;");
        }
        public DbSet<User> User { get; set; }
        public DbSet<Posts> Posts { get; set; }
        public DbSet<Comments> Comments { get; set; }

    }
}
