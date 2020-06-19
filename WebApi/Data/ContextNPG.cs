using Microsoft.EntityFrameworkCore;
using WebApi.Models;

namespace WebApi.Data
{
    public class ContextNPG : DbContext
    {
        public ContextNPG(DbContextOptions<ContextNPG> options) : base(options)
        {
        }

        public DbSet<Course> Courses { get; set; }
        public DbSet<CourseInstructor> CourseInstructors { get; set; }
        public DbSet<Department> Departments { get; set; }
        public DbSet<Enrollment> Enrollments { get; set; }
        public DbSet<Instructor> Instructors { get; set; }
        public DbSet<OfficeAssignment> OfficeAssignments { get; set; }
        public DbSet<Student> Students { get; set; }        

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Course>().ToTable("course");
            modelBuilder.Entity<Enrollment>().ToTable("enrollment");
            modelBuilder.Entity<Student>().ToTable("student");
            modelBuilder.Entity<Department>().ToTable("department");
            modelBuilder.Entity<Instructor>().ToTable("instructor");
            modelBuilder.Entity<OfficeAssignment>().ToTable("officeAssignment");
            modelBuilder.Entity<CourseInstructor>().ToTable("courseInstructor");

            LowercaseRelationalTableAndPropertyNames(ref modelBuilder);
        }

        public static void LowercaseRelationalTableAndPropertyNames(ref ModelBuilder modelBuilder)
        {
            foreach (var entity in modelBuilder.Model.GetEntityTypes())
            {
                entity.Relational().TableName = entity.Relational().TableName.ToLowerInvariant();

                foreach (var property in entity.GetProperties())
                {
                    property.Relational().ColumnName = property.Relational().ColumnName.ToLowerInvariant();
                }
            }
        }
    }
}
