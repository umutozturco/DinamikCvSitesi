using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcCv.Models.Entity;
namespace MvcCv.Controllers
{
    [AllowAnonymous]
    public class DefaultController : Controller
    {
        // GET: Default
        cvDatabaseEntities1 db = new cvDatabaseEntities1();
        public ActionResult Index()
        {
            var degerler = db.Hakkimda.ToList();

            return View(degerler);
        }
        public PartialViewResult SosyalMedya()
        {
            var sosyalMedya = db.SosyalMedya.Where(x=>x.Durum==true).ToList();
            return PartialView(sosyalMedya);
        }
        public PartialViewResult Deneyim()
        {
            var deneyimler = db.Deneyimler.ToList();
            return PartialView(deneyimler);
        }
        public PartialViewResult Egitim()
        {
            var egitim = db.Egitim.ToList();
            return PartialView(egitim);
        }
        public PartialViewResult Yeteneklerim()
        {
            var yetenekler = db.Yeteneklerim.ToList();
            return PartialView(yetenekler);
        }
        public PartialViewResult Hobilerim()
        {
            var hobiler = db.Hobilerim.ToList();
            return PartialView(hobiler);
        }
        public PartialViewResult Sertifikalarim()
        {
            var sertifikalarım = db.Sertifikalarim.ToList();
            return PartialView(sertifikalarım);
        }
        [HttpGet]
        public PartialViewResult Iletisim()
        {
            return PartialView();
        }
        [HttpPost]
        public PartialViewResult Iletisim(Iletisim t)
        {
            t.Tarih=DateTime.Parse( DateTime.Now.ToShortDateString());
            db.Iletisim.Add(t);
            db.SaveChanges();
            return PartialView();
        }
    }

}