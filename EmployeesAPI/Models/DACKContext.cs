using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.Extensions.Configuration;

namespace EmployeesAPI.Models
{
    public partial class DACKContext : DbContext
    {
        private IConfiguration configuration;

        public DACKContext(IConfiguration iConfig)
        {
            configuration = iConfig;
        }
        public virtual DbSet<sp_Employees> sp_Employees { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer(configuration.GetConnectionString("DACKDatabase"));
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {

        }
    }
}
