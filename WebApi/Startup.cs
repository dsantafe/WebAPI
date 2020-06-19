using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using NSwag;
using System.Linq;
using WebApi.Data;

namespace WebApi
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddDbContext<ContextNPG>(options =>
               options.UseNpgsql(Configuration.GetConnectionString("ContextNPG")));

            services.AddCors(options =>
            {
                options.AddDefaultPolicy(
                    builder =>
                    {
                        builder.AllowAnyOrigin();                         
                    });
            });

            // REGISTRAMOS SWAGGER COMO SERVICIO
            services.AddOpenApiDocument(document =>
            {
                document.Title = "Contoso University API";
                document.Description = "La aplicación de muestra es un sitio web para una universidad ficticia de Contoso. Incluye funcionalidades como admisión de estudiantes, creación de cursos y tareas de instructor.";                
            });

            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_2);
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

            // AÑADIMOS EL MIDDLEWARE DE SWAGGER (NSwag)
            app.UseOpenApi();
            app.UseSwaggerUi3();

            app.UseCors();
            app.UseHttpsRedirection();
            app.UseMvc();
        }
    }
}
