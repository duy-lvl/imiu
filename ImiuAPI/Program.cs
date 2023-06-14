using System.Text;
using DAL;
using DAL.Repository;
using DAL.Repository.Implement;
using DAL.Repository.Interface;
using DAL.UnitOfWork;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using Services.CustomeMapper.Implement;
using Services.CustomeMapper.Interface;
using Services.Service;
using Services.Service.Implement;
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
			builder.Services.AddScoped<ICustomerAnswerRepository, CustomerAnswerRepository>();
			builder.Services.AddScoped<ICustomerAnswerService, CustomerAnswerService>();
			builder.Services.AddScoped<IPlanRepository, PlanRepository>();
			builder.Services.AddScoped<ISubscriptionRepository, SubscriptionRepository>();
			builder.Services.AddScoped<IPaymentService, PaymentService>();
			builder.Services.AddScoped<IPlanService, PlanService>();
			builder.Services.AddScoped<ITransactionRepository, TransactionRepository>();
			builder.Services.AddScoped<ITransactionService, TransactionService>();
			builder.Services.AddScoped<ISubscriptionService, SubscriptionService>();
			builder.Services.AddScoped<IAuthService, AuthService>();
			builder.Services.AddScoped<ITagService, TagService>();
			builder.Services.AddScoped<ITagRepository, TagRepository>();
			builder.Services.AddScoped<IMealService, MealService>();
			builder.Services.AddScoped<IMealTagRepository, MealTagRepository>();
			builder.Services.AddScoped<IMealRepository, MealRepository>();
			builder.Services.AddScoped<INutritionFactRepository, NutritionFactRepository>();
			builder.Services.AddScoped<INutritionRepository, NutritionRepository>();	
			

			builder.Services.AddScoped<ITagRepository, TagRepository>();

			builder.Services.AddCors(options =>
			{
				options.AddPolicy("MyPolicy",
					builder => builder.AllowAnyOrigin()
						.AllowAnyMethod()
						.AllowAnyHeader());
			});
			builder.Services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme).AddJwtBearer(options =>
			{
				options.RequireHttpsMetadata = false;
				options.SaveToken = true;
				options.TokenValidationParameters = new TokenValidationParameters()
				{
					ValidateIssuer = true,
					ValidateAudience = true,
					ValidateLifetime = true,
					ValidAudience = builder.Configuration["Jwt:Audience"],
					ValidIssuer = builder.Configuration["Jwt:Issuer"],
					IssuerSigningKey =
						new SymmetricSecurityKey(Encoding.UTF8.GetBytes(builder.Configuration["Jwt:Key"]))
				};
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
			app.UseAuthentication();

			app.MapControllers();

			app.Run();
		}
	}
}