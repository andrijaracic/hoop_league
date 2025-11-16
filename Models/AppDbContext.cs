using HoopLeague.Models.ViewModels;
using Microsoft.EntityFrameworkCore;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options)
        : base(options)
    {
    }

    public DbSet<GameCardViewModel> vw_UtakmicaSlider { get; set; }
    public DbSet<TabelaPoretkaViewModel> vw_TabelaPoretka { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        // SLIDER VIEW
        modelBuilder.Entity<GameCardViewModel>()
            .HasNoKey()
            .ToView("vw_UtakmicaSlider");

        // TABELA VIEW
        modelBuilder.Entity<TabelaPoretkaViewModel>()
            .HasNoKey()
            .ToView("vw_TabelaPoretka");

        base.OnModelCreating(modelBuilder);
    }
}
