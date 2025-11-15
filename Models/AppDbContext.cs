using HoopLeague.Models.ViewModels;
using Microsoft.EntityFrameworkCore;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options)
        : base(options)
    {
    }

    public DbSet<GameCardViewModel> vw_UtakmicaSlider { get; set; }


    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        
        modelBuilder.Entity<GameCardViewModel>()
            .HasNoKey()
            .ToView("vw_UtakmicaSlider");

        base.OnModelCreating(modelBuilder);
    }
}

