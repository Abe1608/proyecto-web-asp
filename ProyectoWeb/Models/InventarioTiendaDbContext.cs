using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace ProyectoWeb.Models;

public partial class InventarioTiendaDbContext : DbContext
{
    public InventarioTiendaDbContext()
    {
    }

    public InventarioTiendaDbContext(DbContextOptions<InventarioTiendaDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Categorias> Categoria { get; set; }

    public virtual DbSet<Producto> Productos { get; set; }

    public virtual DbSet<Ventas> Venta { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Categorias>(entity =>
        {
            entity.HasKey(e => e.CodigoCategoria).HasName("PK__Categori__3CEE2F4CFF20C33B");

            entity.Property(e => e.Nombre)
                .HasMaxLength(50)
                .IsUnicode(false);
        });

        modelBuilder.Entity<Producto>(entity =>
        {
            entity.HasKey(e => e.CodigoProducto).HasName("PK__Producto__785B009EF90386F0");

            entity.ToTable("Producto");

            entity.Property(e => e.NombreProducto)
                .HasMaxLength(50)
                .IsUnicode(false);

            entity.HasOne(d => d.CategoriaFk).WithMany(p => p.Productos)
                .HasForeignKey(d => d.Categoria)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Producto__Catego__38996AB5");
        });

        modelBuilder.Entity<Ventas>(entity =>
        {
            entity.HasKey(e => e.CodigoVenta).HasName("PK__Venta__F2421464664A641F");

            entity.Property(e => e.FechaVenta).HasColumnName("fechaVenta");

            entity.HasOne(d => d.ProductoFk).WithMany(p => p.Venta)
                .HasForeignKey(d => d.IdProducto)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK__Venta__IdProduct__3E52440B");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
