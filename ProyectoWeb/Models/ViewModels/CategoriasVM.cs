using Microsoft.AspNetCore.Mvc.Rendering;

namespace ProyectoWeb.Models.ViewModels
{
    public class CategoriasVM
    {
        public int? CodigoCategoria { get; set; }
        public string Nombre { get; set; } = null!;

        public List<SelectListItem> Categorias { get; set; } = new();
        public List<string> Productos { get; set; } = new();
    }
}
