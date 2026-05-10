using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;

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

        public override void OnActionExecuting(ActionExecutingContext context)
        {
            var isAdmin = context.HttpContext.Session.GetString("Admin");

            if (isAdmin != "true")
            {
                context.Result = new RedirectToActionResult("Login", "AdminAuth", null);
            }

            base.OnActionExecuting(context);
        }
    }


}
