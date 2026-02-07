using HoopLeague.Services.Implementation;
using HoopLeague.Services.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;




var builder = WebApplication.CreateBuilder(args);

builder.Services.AddScoped<IHomeService, HomeService>();

builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

builder.Services.AddScoped<ITimoviService, TimoviService>();

builder.Services.AddScoped<IIgraciService, IgraciService>();

builder.Services.AddScoped<IVestiService, VestiService>();

builder.Services.AddScoped<IUtakmiceService, UtakmiceService>();

builder.Services.AddScoped<ITimService, TimService>();

builder.Services.AddScoped<IIgracService, IgracService>();

builder.Services.AddScoped<IStatistikeService, StatistikeService>();

builder.Services.AddScoped<IJednaUtakmicaService, JednaUtakmicaService>();








using (var scope = builder.Services.BuildServiceProvider().CreateScope())
{
    try
    {
        var context = scope.ServiceProvider.GetRequiredService<AppDbContext>();
        context.Database.CanConnect();
        Console.WriteLine("SQL CONNECTED ✓");
    }
    catch (Exception ex)
    {
        Console.WriteLine("SQL ERROR:");
        Console.WriteLine(ex.Message);
    }
}


// Add services to the container.
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}




app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
