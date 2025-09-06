using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.DataAnnotations;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using ProyectoWeb.Models;
using ProyectoWeb.Models.ViewModels;
using System.Diagnostics;

namespace ProyectoWeb.Controllers
{
    /* 
         * Author: Abelardo Amaya
         * 
         * 
         */
    public class HomeController : Controller
    {
        private readonly InventarioTiendaDbContext _Dbcontext;

        public HomeController(InventarioTiendaDbContext context)
        {
            _Dbcontext = context;
        }
        
        public IActionResult Index(int? codigoCategoria)
        {
             var mdl = new CategoriasVM();

            /// Esta consulta esta siendo utilizada para rellenar el item Select, para escoger la categoria de producto que uno desea buscar
            mdl.Categorias = _Dbcontext.Categoria
           .Where(c => c.Productos.Any(p =>
               p.Venta.Any(v => v.FechaVenta.Year == 2019)))
           .Select(c => new SelectListItem
           {
               Value = c.CodigoCategoria.ToString(),
               Text = c.Nombre
           })
           .ToList();

            // Si el parametro trae valor, entonces realizara la busqueda de los productos por su categoria correspondiente
            if (codigoCategoria.HasValue)
            {
                mdl.CodigoCategoria = codigoCategoria.Value;

                mdl.Productos = _Dbcontext.Venta
                    .Where(v => v.FechaVenta.Year == 2019 &&
                                v.ProductoFk.Categoria == codigoCategoria.Value)
                    .Select(v => v.ProductoFk.NombreProducto )
                    .Distinct()
                    .ToList();
            }

            return View(mdl);
        }
    }
}
