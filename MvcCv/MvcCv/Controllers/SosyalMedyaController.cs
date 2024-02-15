using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcCv.Models.Entity;
using MvcCv.Repositories;
namespace MvcCv.Controllers
{
    public class SosyalMedyaController : Controller
    {
        // GET: SosyalMedya
        GenericRepository<SosyalMedya> repo = new GenericRepository<SosyalMedya>();
        cvDatabaseEntities1 db = new cvDatabaseEntities1();
        public ActionResult Index()
        {
            var veriler = repo.List();
            return View(veriler);
        }
        [HttpGet]
        public ActionResult Ekle()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Ekle(SosyalMedya p)
        {
            repo.TAdd(p);
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult SayfaGetir(int id)
        {
            var hesap = repo.Find(x=>x.Id == id);
            return View(hesap);
        }
        [HttpPost]
        public ActionResult SayfaGetir(SosyalMedya p)
        {
            var hesap = repo.Find(x => x.Id == p.Id);
            
            hesap.Ad=p.Ad;
            hesap.Durum = true;
            hesap.Link=p.Link;
            hesap.Ikon=p.Ikon;
            repo.TUpdate(hesap);
            return RedirectToAction("Index");
        }
        public ActionResult Sil(int id)
        {
            var hesap = repo.Find(x=>x.Id==id);
            hesap.Durum = false;
            repo.TUpdate(hesap);
            return RedirectToAction("Index");
        }
    }
}