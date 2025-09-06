using System;
using System.Collections.Generic;

namespace ProyectoWeb.Models;

public partial class Producto
{
    public int CodigoProducto { get; set; }

    public string NombreProducto { get; set; } = null!;

    public int Categoria { get; set; }

    public virtual Categorias CategoriaFk { get; set; } = null!;

    public virtual ICollection<Ventas> Venta { get; set; } = new List<Ventas>();
}
