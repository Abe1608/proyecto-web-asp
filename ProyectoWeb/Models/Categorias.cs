using System;
using System.Collections.Generic;

namespace ProyectoWeb.Models;

public partial class Categorias
{
    public int CodigoCategoria { get; set; }

    public string Nombre { get; set; } = null!;

    public virtual ICollection<Producto> Productos { get; set; } = new List<Producto>();
}
