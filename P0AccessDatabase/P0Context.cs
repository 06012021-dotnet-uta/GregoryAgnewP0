using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace P0AccessDatabase
{
    public partial class P0Context : DbContext
    {
        public P0Context()
        {
        }

        public P0Context(DbContextOptions<P0Context> options)
            : base(options)
        {
        }

        public virtual DbSet<Cat1> Cat1s { get; set; }
        public virtual DbSet<Cat12> Cat12s { get; set; }
        public virtual DbSet<Cat2> Cat2s { get; set; }
        public virtual DbSet<Cat23> Cat23s { get; set; }
        public virtual DbSet<Cat3> Cat3s { get; set; }
        public virtual DbSet<Cat34> Cat34s { get; set; }
        public virtual DbSet<Cat4> Cat4s { get; set; }
        public virtual DbSet<Inventory> Inventories { get; set; }
        public virtual DbSet<Item> Items { get; set; }
        public virtual DbSet<Keyword> Keywords { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<Store> Stores { get; set; }
        public virtual DbSet<User> Users { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
//#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Server=.\\ASUSHOMECLOUD;Database=P0;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");

            modelBuilder.Entity<Cat1>(entity =>
            {
                entity.ToTable("Cat1");

                entity.Property(e => e.Cat1id).HasColumnName("cat1id");

                entity.Property(e => e.Category1)
                    .IsRequired()
                    .HasMaxLength(30)
                    .HasColumnName("category1");
            });

            modelBuilder.Entity<Cat12>(entity =>
            {
                entity.HasKey(e => new { e.Cat1id, e.Cat2id })
                    .HasName("PKCat12");

                entity.ToTable("Cat12");

                entity.Property(e => e.Cat1id).HasColumnName("cat1id");

                entity.Property(e => e.Cat2id).HasColumnName("cat2id");

                entity.HasOne(d => d.Cat1)
                    .WithMany(p => p.Cat12s)
                    .HasForeignKey(d => d.Cat1id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Cat12__cat1id__7B264821");

                entity.HasOne(d => d.Cat2)
                    .WithMany(p => p.Cat12s)
                    .HasForeignKey(d => d.Cat2id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Cat12__cat2id__7C1A6C5A");
            });

            modelBuilder.Entity<Cat2>(entity =>
            {
                entity.ToTable("Cat2");

                entity.Property(e => e.Cat2id).HasColumnName("cat2id");

                entity.Property(e => e.Category2)
                    .IsRequired()
                    .HasMaxLength(30)
                    .HasColumnName("category2");
            });

            modelBuilder.Entity<Cat23>(entity =>
            {
                entity.HasKey(e => new { e.Cat2id, e.Cat3id })
                    .HasName("PKCat23");

                entity.ToTable("Cat23");

                entity.Property(e => e.Cat2id).HasColumnName("cat2id");

                entity.Property(e => e.Cat3id).HasColumnName("cat3id");

                entity.HasOne(d => d.Cat2)
                    .WithMany(p => p.Cat23s)
                    .HasForeignKey(d => d.Cat2id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Cat23__cat2id__0D44F85C");

                entity.HasOne(d => d.Cat3)
                    .WithMany(p => p.Cat23s)
                    .HasForeignKey(d => d.Cat3id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Cat23__cat3id__0E391C95");
            });

            modelBuilder.Entity<Cat3>(entity =>
            {
                entity.ToTable("Cat3");

                entity.Property(e => e.Cat3id).HasColumnName("cat3id");

                entity.Property(e => e.Category3)
                    .IsRequired()
                    .HasMaxLength(30)
                    .HasColumnName("category3");
            });

            modelBuilder.Entity<Cat34>(entity =>
            {
                entity.HasKey(e => new { e.Cat3id, e.Cat4id })
                    .HasName("PKCat34");

                entity.ToTable("Cat34");

                entity.Property(e => e.Cat3id).HasColumnName("cat3id");

                entity.Property(e => e.Cat4id).HasColumnName("cat4id");

                entity.HasOne(d => d.Cat3)
                    .WithMany(p => p.Cat34s)
                    .HasForeignKey(d => d.Cat3id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Cat34__cat3id__02C769E9");

                entity.HasOne(d => d.Cat4)
                    .WithMany(p => p.Cat34s)
                    .HasForeignKey(d => d.Cat4id)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Cat34__cat4id__03BB8E22");
            });

            modelBuilder.Entity<Cat4>(entity =>
            {
                entity.ToTable("Cat4");

                entity.Property(e => e.Cat4id).HasColumnName("cat4id");

                entity.Property(e => e.Category4)
                    .IsRequired()
                    .HasMaxLength(30)
                    .HasColumnName("category4");
            });

            modelBuilder.Entity<Inventory>(entity =>
            {
                entity.HasKey(e => new { e.Storeid, e.Itemid })
                    .HasName("PKInventory");

                entity.ToTable("Inventory");

                entity.Property(e => e.Storeid).HasColumnName("storeid");

                entity.Property(e => e.Itemid).HasColumnName("itemid");

                entity.Property(e => e.Quantity).HasColumnName("quantity");

                entity.HasOne(d => d.Item)
                    .WithMany(p => p.Inventories)
                    .HasForeignKey(d => d.Itemid)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Inventory__itemi__0A688BB1");

                entity.HasOne(d => d.Store)
                    .WithMany(p => p.Inventories)
                    .HasForeignKey(d => d.Storeid)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Inventory__store__09746778");
            });

            modelBuilder.Entity<Item>(entity =>
            {
                entity.ToTable("Item");

                entity.Property(e => e.Itemid).HasColumnName("itemid");

                entity.Property(e => e.Descriptionforconsole)
                    .IsRequired()
                    .HasMaxLength(1000)
                    .HasColumnName("descriptionforconsole");

                entity.Property(e => e.Item1)
                    .IsRequired()
                    .HasMaxLength(100)
                    .HasColumnName("item");

                entity.Property(e => e.Price)
                    .HasColumnType("decimal(12, 2)")
                    .HasColumnName("price");
            });

            modelBuilder.Entity<Keyword>(entity =>
            {
                entity.HasKey(e => new { e.Keyword1, e.Itemid })
                    .HasName("PKKeyword");

                entity.Property(e => e.Keyword1)
                    .HasMaxLength(100)
                    .HasColumnName("keyword");

                entity.Property(e => e.Itemid).HasColumnName("itemid");

                entity.HasOne(d => d.Item)
                    .WithMany(p => p.Keywords)
                    .HasForeignKey(d => d.Itemid)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Keywords__itemid__0697FACD");
            });

            modelBuilder.Entity<Order>(entity =>
            {
                entity.HasKey(e => new { e.Storeid, e.Itemid, e.Userid, e.Orderdate })
                    .HasName("PKOrders");

                entity.Property(e => e.Storeid).HasColumnName("storeid");

                entity.Property(e => e.Itemid).HasColumnName("itemid");

                entity.Property(e => e.Userid).HasColumnName("userid");

                entity.Property(e => e.Orderdate)
                    .HasColumnType("datetime")
                    .HasColumnName("orderdate");

                entity.Property(e => e.Orderid).HasColumnName("orderid");

                entity.Property(e => e.Quantity).HasColumnName("quantity");

                entity.HasOne(d => d.Item)
                    .WithMany(p => p.Orders)
                    .HasForeignKey(d => d.Itemid)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Orders__itemid__18B6AB08");

                entity.HasOne(d => d.Store)
                    .WithMany(p => p.Orders)
                    .HasForeignKey(d => d.Storeid)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Orders__storeid__17C286CF");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.Orders)
                    .HasForeignKey(d => d.Userid)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Orders__userid__19AACF41");
            });

            modelBuilder.Entity<Store>(entity =>
            {
                entity.ToTable("Store");

                entity.Property(e => e.Storeid).HasColumnName("storeid");

                entity.Property(e => e.Location)
                    .IsRequired()
                    .HasMaxLength(100)
                    .HasColumnName("location");
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.Property(e => e.Userid).HasColumnName("userid");

                entity.Property(e => e.Defaultstore).HasColumnName("defaultstore");

                entity.Property(e => e.Firstname)
                    .IsRequired()
                    .HasMaxLength(30)
                    .HasColumnName("firstname");

                entity.Property(e => e.Lastname)
                    .IsRequired()
                    .HasMaxLength(30)
                    .HasColumnName("lastname");

                entity.Property(e => e.Location)
                    .HasMaxLength(200)
                    .HasColumnName("location");

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasMaxLength(200)
                    .HasColumnName("password");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
