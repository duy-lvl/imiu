using DAL;
using DAL.Repository;
using DAL.Repository.Implement;
using DAL.Repository.Interface;
using DAL.UnitOfWork;
using Microsoft.OpenApi.Models;
using Services.CustomeMapper.Implement;
using Services.CustomeMapper.Interface;
using Services.Service;
using Services.Service.Interface;

namespace ImiuAPI
{
	public class Program
	{
		public static void Main(string[] args)
		{
			var builder = WebApplication.CreateBuilder(args);

			// Add services to the container.

			builder.Services.AddControllers().AddNewtonsoftJson(options =>
	options.SerializerSettings.ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore); 
			// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
			builder.Services.AddEndpointsApiExplorer();
			builder.Services.AddSwaggerGen(options =>
			{
				options.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
				{
					Type = SecuritySchemeType.Http,
					Scheme = "bearer",
					BearerFormat = "JWT",
					In = ParameterLocation.Header,
					Description = "Enter the JWT token obtained from the login endpoint",
					Name = "Authorization"
				});
				options.AddSecurityRequirement(new OpenApiSecurityRequirement
				{
					{
						new OpenApiSecurityScheme
						{
							Reference = new OpenApiReference
							{
								Type = ReferenceType.SecurityScheme,
								Id = "Bearer"
							}
						},
						Array.Empty<string>()
					}
				});
			});

			// Add services to the container.
			builder.Services.AddDbContext<ImiuDbContext>();
			builder.Services.AddScoped<IUnitOfWork, UnitOfWork>();
			builder.Services.AddScoped<ICustomMapper, CustomMapper>();
			builder.Services.AddScoped<IAccountRepository, AccountRepository>();
			builder.Services.AddScoped<IAccountService, AccountService>();
			builder.Services.AddScoped<IQuestionRepository, QuestionRepository>();
			builder.Services.AddScoped<IQuestionService, QuestionService>();
			builder.Services.AddScoped<IAnswerRepository, AnswerRepository>();
			builder.Services.AddScoped<IAnswerService, AnswerService>();
			builder.Services.AddCors(options =>
			{
				options.AddPolicy("MyPolicy",
					builder => builder.AllowAnyOrigin()
						.AllowAnyMethod()
						.AllowAnyHeader());
			});
			
			var app = builder.Build();
			app.UseCors("MyPolicy");
			// Configure the HTTP request pipeline.
			if (app.Environment.IsDevelopment())
			{
				app.UseSwagger();
				app.UseSwaggerUI();
			}

			app.UseHttpsRedirection();

			app.UseAuthorization();


			app.MapControllers();

			app.Run();
		}
	}
}