using HoopLeague.Models.ViewModels;
using HoopLeague.Models.ViewModels.HoopLeague.Models.ViewModels;
using Microsoft.EntityFrameworkCore;

public class AppDbContext : DbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options)
        : base(options)
    {
    }

    public DbSet<GameCardViewModel> vw_UtakmicaSlider { get; set; }
    public DbSet<TabelaPoretkaViewModel> vw_TabelaPoretka { get; set; }

    public DbSet<VestViewModel> vw_Vesti { get; set; }

    public DbSet<TimoviViewModel> vw_Timovi { get; set; }


    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<GameCardViewModel>()
            .HasNoKey()
            .ToView("vw_UtakmicaSlider");

        modelBuilder.Entity<TabelaPoretkaViewModel>()
            .HasNoKey()
            .ToView("vw_TabelaPoretka");

        modelBuilder.Entity<VestViewModel>()
            .HasNoKey()
            .ToView("vw_Vesti");

        modelBuilder.Entity<TimoviViewModel>()
            .HasNoKey()
            .ToView("vw_Timovi");

        base.OnModelCreating(modelBuilder);
    }

}
