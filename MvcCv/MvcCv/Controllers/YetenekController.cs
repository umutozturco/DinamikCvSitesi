using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcCv.Models.Entity;
using MvcCv.Repositories;
namespace MvcCv.Controllers
{
    public class YetenekController : Controller
    {
        // GET: Yetenek
        GenericRepository<Yeteneklerim> repo = new GenericRepository<Yeteneklerim>();
        public ActionResult Index()
        {
           
            var yetenekler = repo.List();
            return View(yetenekler);
        }
        [HttpGet]
        public ActionResult YeniYetenek()
        {
            return View();
        }
        [HttpPost]
        public ActionResult YeniYetenek(Yeteneklerim t)
        {
            repo.TAdd(t);
            return RedirectToAction("Index");
        }
        public ActionResult YetenekSil(int id)
        {
            var yetenek =repo.Find(x=>x.Id == id);
            repo.TDelete(yetenek);
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult YetenekDuzenle(int id)
        {
            var yetenek = repo.Find(x => x.Id == id);
            return View(yetenek);
        }
        [HttpPost]
        public ActionResult YetenekDuzenle(Yeteneklerim t)
        {
            var y = repo.Find(x => x.Id == t.Id);
            y.Yetenek = t.Yetenek;
            y.Oran=t.Oran;
            repo.TUpdate(t);
            return RedirectToAction("Index");
        }

    }
}