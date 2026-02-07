using Microsoft.AspNetCore.Mvc;

namespace HoopLeague.Controllers.Admin
{
    [Route("admin")]
    public class AdminController : Controller
    {
        [HttpGet("")]
        public IActionResult Index()
        {
            return View();
        }
    }
}
