using HoopLeague.Models;
using HoopLeague.Models.ViewModels;
using HoopLeague.Services.Interfaces;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;


namespace HoopLeague.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IHomeService _homeService;
        private readonly ITimoviService _timoviService;


        // Jedini validan konstruktor
        public HomeController(ILogger<HomeController> logger, IHomeService homeService, ITimoviService timoviService)
        {
            _logger = logger;
            _homeService = homeService;
            _timoviService = timoviService;
        }

        public IActionResult Index()
        {
            var model = new HomePageViewModel
            {
                Slider = _homeService.GetSliderGames(),
                Tabela = _homeService.GetTabelaPoretka(),
                Vesti = _homeService.GetLatestNews()
            };

            return View(model);
        }

        public IActionResult Timovi()
        {
            var timovi = _timoviService.GetAllTimovi();

            return View(timovi);
        }



        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel
            {
                RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier
            });
        }
    }
}
