using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;

public class AdminAuthController : Controller
{
    private const string AdminPassword = "Admin123";

    public IActionResult Login()
    {
        return View();
    }

    [HttpPost]
    public IActionResult Login(string password)
    {
        if (password == AdminPassword)
        {
            HttpContext.Session.SetString("Admin", "true");
            return RedirectToAction("Index", "Admin");
        }

        ViewBag.Error = "Pogrešna šifra";
        return View();
    }


    [HttpPost]
    [ValidateAntiForgeryToken]
    public IActionResult Logout()
    {
        HttpContext.Session.Remove("Admin");
        return RedirectToAction("Login");
    }


}