using System;
using System.Collections.Generic;

namespace ProyectoWeb.Models;

public partial class Ventas
{
    public int CodigoVenta { get; set; }
    public DateOnly FechaVenta { get; set; }
    public int IdProducto { get; set; }
    public virtual Producto ProductoFk { get; set; } = null!;
}
