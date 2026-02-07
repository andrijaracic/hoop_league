using HoopLeague.Models;
using HoopLeague.Models.ViewModels;
using HoopLeague.Services.Interfaces;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace HoopLeague.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IHomeService _homeService;
        private readonly ITimoviService _timoviService;
        private readonly IIgraciService _igraciService;
        private readonly IVestiService _vestiService;
        private readonly IUtakmiceService _utakmiceService;
        private readonly ITimService _timService;
        private readonly IIgracService _igracService;
        private readonly IStatistikeService _statistikeService;
        private readonly IJednaUtakmicaService _jednaUtakmicaService;

        public HomeController(
            ILogger<HomeController> logger,
            IHomeService homeService,
            ITimoviService timoviService,
            IIgraciService igraciService,
            IVestiService vestiService,
            IUtakmiceService utakmiceService,
            ITimService timService,
            IIgracService igracService,
            IStatistikeService statistikeService,
            IJednaUtakmicaService jednaUtakmicaService)
           
        {
            _logger = logger;
            _homeService = homeService;
            _timoviService = timoviService;
            _igraciService = igraciService;
            _vestiService = vestiService;
            _utakmiceService = utakmiceService;
            _timService = timService;
            _igracService = igracService;
            _statistikeService = statistikeService;
            _jednaUtakmicaService = jednaUtakmicaService;
            
        }

        // ================== HOME ==================
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

        public IActionResult Tim(int id)
        {
            var model = new TimViewModel
            {
                TimDetalji = _timService.GetTim(id),
                Igraci = _timService.GetIgraci(id),
                Treneri = _timService.GetTreneri(id),
                Utakmice = _timService.GetTimUtakmice(id),
                IgraciStatistika = _timService.GetStatistikaIgraci(id),
                TimStatistika = _timService.GetTimStatistika(id)
            };

            return View(model); 
        }

        public IActionResult Statistike()
        {
            var model = new StatistikePageViewModel
            {
                IgraciStatistika = _statistikeService.GetStatistikaIgraci(),
                TimoviStatistika = _statistikeService.GetStatistikaTimovi()
            };

            return View(model);
        }

        public IActionResult JednaUtakmica(int id)
        {
            var model = new UtakmicaPageViewModel
            {
                StatistikaIgraci = _jednaUtakmicaService.GetIgraciStatistikaUtakmica(id),
                StatistikaTim = _jednaUtakmicaService.GetTimoviStatistikaUtakmica(id),
                UtakmicaDetalji = _jednaUtakmicaService.GetUtakmicaDetalji(id)
            };

            return View(model);
        }

        public IActionResult Igrac(int id)
        {
            var model = new IgracViewModel
            {
                Igrac = _igracService.GetIgrac(id),
                IgracStatistika = _igracService.GetIgraciStatistika(id)
                
            };

            return View(model);
        }


        // ================== TIMOVI ==================
        public IActionResult Timovi()
        {
            var timovi = _timoviService.GetAllTimovi();
            return View(timovi);
        }

        // ================== IGRACI ==================
        public async Task<IActionResult> Igraci()
        {
            var igraci = await _igraciService.GetIgraci(0, 24); 
            return View(igraci);
        }

        public async Task<IActionResult> LoadMoreIgraci(int skip)
        {
            var igraci = await _igraciService.GetIgraci(skip, 24);
            return Json(igraci);
        }

        public async Task<IActionResult> SearchIgraci(string query)
        {
            var igraci = await _igraciService.SearchIgraci(query);
            return Json(igraci);
        }

        public IActionResult Vesti()
        {
            var vesti = _vestiService.GetVesti(); 
            return View(vesti);
        }

        public async Task<IActionResult> Utakmice(int runda = 1)
        {
            var utakmice = _utakmiceService.GetUtakmice(runda);
            ViewBag.SelectedRunda = runda;
            return View(utakmice);
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
