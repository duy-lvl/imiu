using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DAL.Migrations
{
    /// <inheritdoc />
    public partial class updateMigration : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_directions_meals_MealId",
                table: "directions");

            migrationBuilder.DropForeignKey(
                name: "FK_mealIngredients_ingredients_IngredidentId",
                table: "mealIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_mealIngredients_meals_MealId",
                table: "mealIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_nutritionFacts_meals_MealId",
                table: "nutritionFacts");

            migrationBuilder.DropForeignKey(
                name: "FK_nutritionFacts_nutritions_NutritionId",
                table: "nutritionFacts");

            migrationBuilder.DropForeignKey(
                name: "FK_plans_accountTypes_AccountTypeId",
                table: "plans");

            migrationBuilder.DropForeignKey(
                name: "FK_plans_accounts_AccountId",
                table: "plans");

            migrationBuilder.DropTable(
                name: "accountsDetail");

            migrationBuilder.DropTable(
                name: "accountTypes");

            migrationBuilder.DropPrimaryKey(
                name: "PK_tags",
                table: "tags");

            migrationBuilder.DropPrimaryKey(
                name: "PK_plans",
                table: "plans");

            migrationBuilder.DropPrimaryKey(
                name: "PK_nutritions",
                table: "nutritions");

            migrationBuilder.DropPrimaryKey(
                name: "PK_nutritionFacts",
                table: "nutritionFacts");

            migrationBuilder.DropPrimaryKey(
                name: "PK_mealTags",
                table: "mealTags");

            migrationBuilder.DropPrimaryKey(
                name: "PK_mealSelectionItem",
                table: "mealSelectionItem");

            migrationBuilder.DropPrimaryKey(
                name: "PK_mealSelection",
                table: "mealSelection");

            migrationBuilder.DropPrimaryKey(
                name: "PK_meals",
                table: "meals");

            migrationBuilder.DropPrimaryKey(
                name: "PK_mealIngredients",
                table: "mealIngredients");

            migrationBuilder.DropPrimaryKey(
                name: "PK_ingredients",
                table: "ingredients");

            migrationBuilder.DropPrimaryKey(
                name: "PK_directions",
                table: "directions");

            migrationBuilder.DropPrimaryKey(
                name: "PK_accounts",
                table: "accounts");

            migrationBuilder.RenameTable(
                name: "tags",
                newName: "Tags");

            migrationBuilder.RenameTable(
                name: "plans",
                newName: "Plans");

            migrationBuilder.RenameTable(
                name: "nutritions",
                newName: "Nutritions");

            migrationBuilder.RenameTable(
                name: "nutritionFacts",
                newName: "NutritionFacts");

            migrationBuilder.RenameTable(
                name: "mealTags",
                newName: "MealTags");

            migrationBuilder.RenameTable(
                name: "mealSelectionItem",
                newName: "MealSelectionItem");

            migrationBuilder.RenameTable(
                name: "mealSelection",
                newName: "MealSelection");

            migrationBuilder.RenameTable(
                name: "meals",
                newName: "Meals");

            migrationBuilder.RenameTable(
                name: "mealIngredients",
                newName: "MealIngredients");

            migrationBuilder.RenameTable(
                name: "ingredients",
                newName: "Ingredients");

            migrationBuilder.RenameTable(
                name: "directions",
                newName: "Directions");

            migrationBuilder.RenameTable(
                name: "accounts",
                newName: "Accounts");

            migrationBuilder.RenameColumn(
                name: "AccountTypeId",
                table: "Plans",
                newName: "SubcriptionId");

            migrationBuilder.RenameIndex(
                name: "IX_plans_AccountId",
                table: "Plans",
                newName: "IX_Plans_AccountId");

            migrationBuilder.RenameIndex(
                name: "IX_plans_AccountTypeId",
                table: "Plans",
                newName: "IX_Plans_SubcriptionId");

            migrationBuilder.RenameIndex(
                name: "IX_nutritionFacts_NutritionId",
                table: "NutritionFacts",
                newName: "IX_NutritionFacts_NutritionId");

            migrationBuilder.RenameIndex(
                name: "IX_nutritionFacts_MealId",
                table: "NutritionFacts",
                newName: "IX_NutritionFacts_MealId");

            migrationBuilder.RenameColumn(
                name: "Id",
                table: "MealTags",
                newName: "TagId");

            migrationBuilder.RenameIndex(
                name: "IX_mealIngredients_MealId",
                table: "MealIngredients",
                newName: "IX_MealIngredients_MealId");

            migrationBuilder.RenameIndex(
                name: "IX_mealIngredients_IngredidentId",
                table: "MealIngredients",
                newName: "IX_MealIngredients_IngredidentId");

            migrationBuilder.RenameIndex(
                name: "IX_directions_MealId",
                table: "Directions",
                newName: "IX_Directions_MealId");

            migrationBuilder.AddColumn<Guid>(
                name: "MealId",
                table: "MealTags",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "Id",
                table: "MealSelectionItem",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "AccountId1",
                table: "MealSelection",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "SubcriptionId",
                table: "Accounts",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_Tags",
                table: "Tags",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Plans",
                table: "Plans",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Nutritions",
                table: "Nutritions",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_NutritionFacts",
                table: "NutritionFacts",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_MealTags",
                table: "MealTags",
                columns: new[] { "MealId", "TagId" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_MealSelectionItem",
                table: "MealSelectionItem",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_MealSelection",
                table: "MealSelection",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Meals",
                table: "Meals",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_MealIngredients",
                table: "MealIngredients",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Ingredients",
                table: "Ingredients",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Directions",
                table: "Directions",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Accounts",
                table: "Accounts",
                column: "Id");

            migrationBuilder.CreateTable(
                name: "Question",
                columns: table => new
                {
                    id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Content = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Index = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Question", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Subcriptions",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Value = table.Column<int>(type: "int", nullable: false),
                    Duration = table.Column<int>(type: "int", nullable: false),
                    Code = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Subcriptions", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Answers",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Content = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    QuestionId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    TagId = table.Column<Guid>(type: "uniqueidentifier", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Answers", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Answers_Question_QuestionId",
                        column: x => x.QuestionId,
                        principalTable: "Question",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Answers_Tags_TagId",
                        column: x => x.TagId,
                        principalTable: "Tags",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "CustomerAnswer",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Answerid = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    AccountId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Value = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CustomerAnswer", x => x.Id);
                    table.ForeignKey(
                        name: "FK_CustomerAnswer_Accounts_AccountId",
                        column: x => x.AccountId,
                        principalTable: "Accounts",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_CustomerAnswer_Answers_Answerid",
                        column: x => x.Answerid,
                        principalTable: "Answers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_MealTags_TagId",
                table: "MealTags",
                column: "TagId");

            migrationBuilder.CreateIndex(
                name: "IX_MealSelectionItem_MealId",
                table: "MealSelectionItem",
                column: "MealId");

            migrationBuilder.CreateIndex(
                name: "IX_MealSelectionItem_MealSelectionId",
                table: "MealSelectionItem",
                column: "MealSelectionId");

            migrationBuilder.CreateIndex(
                name: "IX_MealSelection_AccountId1",
                table: "MealSelection",
                column: "AccountId1");

            migrationBuilder.CreateIndex(
                name: "IX_Accounts_SubcriptionId",
                table: "Accounts",
                column: "SubcriptionId");

            migrationBuilder.CreateIndex(
                name: "IX_Answers_QuestionId",
                table: "Answers",
                column: "QuestionId");

            migrationBuilder.CreateIndex(
                name: "IX_Answers_TagId",
                table: "Answers",
                column: "TagId");

            migrationBuilder.CreateIndex(
                name: "IX_CustomerAnswer_AccountId",
                table: "CustomerAnswer",
                column: "AccountId");

            migrationBuilder.CreateIndex(
                name: "IX_CustomerAnswer_Answerid",
                table: "CustomerAnswer",
                column: "Answerid");

            migrationBuilder.AddForeignKey(
                name: "FK_Accounts_Subcriptions_SubcriptionId",
                table: "Accounts",
                column: "SubcriptionId",
                principalTable: "Subcriptions",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Directions_Meals_MealId",
                table: "Directions",
                column: "MealId",
                principalTable: "Meals",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_MealIngredients_Ingredients_IngredidentId",
                table: "MealIngredients",
                column: "IngredidentId",
                principalTable: "Ingredients",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_MealIngredients_Meals_MealId",
                table: "MealIngredients",
                column: "MealId",
                principalTable: "Meals",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_MealSelection_Accounts_AccountId1",
                table: "MealSelection",
                column: "AccountId1",
                principalTable: "Accounts",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_MealSelectionItem_MealSelection_MealSelectionId",
                table: "MealSelectionItem",
                column: "MealSelectionId",
                principalTable: "MealSelection",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_MealSelectionItem_Meals_MealId",
                table: "MealSelectionItem",
                column: "MealId",
                principalTable: "Meals",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_MealTags_Meals_MealId",
                table: "MealTags",
                column: "MealId",
                principalTable: "Meals",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_MealTags_Tags_TagId",
                table: "MealTags",
                column: "TagId",
                principalTable: "Tags",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_NutritionFacts_Meals_MealId",
                table: "NutritionFacts",
                column: "MealId",
                principalTable: "Meals",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_NutritionFacts_Nutritions_NutritionId",
                table: "NutritionFacts",
                column: "NutritionId",
                principalTable: "Nutritions",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Plans_Accounts_AccountId",
                table: "Plans",
                column: "AccountId",
                principalTable: "Accounts",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Plans_Subcriptions_SubcriptionId",
                table: "Plans",
                column: "SubcriptionId",
                principalTable: "Subcriptions",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Accounts_Subcriptions_SubcriptionId",
                table: "Accounts");

            migrationBuilder.DropForeignKey(
                name: "FK_Directions_Meals_MealId",
                table: "Directions");

            migrationBuilder.DropForeignKey(
                name: "FK_MealIngredients_Ingredients_IngredidentId",
                table: "MealIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_MealIngredients_Meals_MealId",
                table: "MealIngredients");

            migrationBuilder.DropForeignKey(
                name: "FK_MealSelection_Accounts_AccountId1",
                table: "MealSelection");

            migrationBuilder.DropForeignKey(
                name: "FK_MealSelectionItem_MealSelection_MealSelectionId",
                table: "MealSelectionItem");

            migrationBuilder.DropForeignKey(
                name: "FK_MealSelectionItem_Meals_MealId",
                table: "MealSelectionItem");

            migrationBuilder.DropForeignKey(
                name: "FK_MealTags_Meals_MealId",
                table: "MealTags");

            migrationBuilder.DropForeignKey(
                name: "FK_MealTags_Tags_TagId",
                table: "MealTags");

            migrationBuilder.DropForeignKey(
                name: "FK_NutritionFacts_Meals_MealId",
                table: "NutritionFacts");

            migrationBuilder.DropForeignKey(
                name: "FK_NutritionFacts_Nutritions_NutritionId",
                table: "NutritionFacts");

            migrationBuilder.DropForeignKey(
                name: "FK_Plans_Accounts_AccountId",
                table: "Plans");

            migrationBuilder.DropForeignKey(
                name: "FK_Plans_Subcriptions_SubcriptionId",
                table: "Plans");

            migrationBuilder.DropTable(
                name: "CustomerAnswer");

            migrationBuilder.DropTable(
                name: "Subcriptions");

            migrationBuilder.DropTable(
                name: "Answers");

            migrationBuilder.DropTable(
                name: "Question");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Tags",
                table: "Tags");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Plans",
                table: "Plans");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Nutritions",
                table: "Nutritions");

            migrationBuilder.DropPrimaryKey(
                name: "PK_NutritionFacts",
                table: "NutritionFacts");

            migrationBuilder.DropPrimaryKey(
                name: "PK_MealTags",
                table: "MealTags");

            migrationBuilder.DropIndex(
                name: "IX_MealTags_TagId",
                table: "MealTags");

            migrationBuilder.DropPrimaryKey(
                name: "PK_MealSelectionItem",
                table: "MealSelectionItem");

            migrationBuilder.DropIndex(
                name: "IX_MealSelectionItem_MealId",
                table: "MealSelectionItem");

            migrationBuilder.DropIndex(
                name: "IX_MealSelectionItem_MealSelectionId",
                table: "MealSelectionItem");

            migrationBuilder.DropPrimaryKey(
                name: "PK_MealSelection",
                table: "MealSelection");

            migrationBuilder.DropIndex(
                name: "IX_MealSelection_AccountId1",
                table: "MealSelection");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Meals",
                table: "Meals");

            migrationBuilder.DropPrimaryKey(
                name: "PK_MealIngredients",
                table: "MealIngredients");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Ingredients",
                table: "Ingredients");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Directions",
                table: "Directions");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Accounts",
                table: "Accounts");

            migrationBuilder.DropIndex(
                name: "IX_Accounts_SubcriptionId",
                table: "Accounts");

            migrationBuilder.DropColumn(
                name: "MealId",
                table: "MealTags");

            migrationBuilder.DropColumn(
                name: "Id",
                table: "MealSelectionItem");

            migrationBuilder.DropColumn(
                name: "AccountId1",
                table: "MealSelection");

            migrationBuilder.DropColumn(
                name: "SubcriptionId",
                table: "Accounts");

            migrationBuilder.RenameTable(
                name: "Tags",
                newName: "tags");

            migrationBuilder.RenameTable(
                name: "Plans",
                newName: "plans");

            migrationBuilder.RenameTable(
                name: "Nutritions",
                newName: "nutritions");

            migrationBuilder.RenameTable(
                name: "NutritionFacts",
                newName: "nutritionFacts");

            migrationBuilder.RenameTable(
                name: "MealTags",
                newName: "mealTags");

            migrationBuilder.RenameTable(
                name: "MealSelectionItem",
                newName: "mealSelectionItem");

            migrationBuilder.RenameTable(
                name: "MealSelection",
                newName: "mealSelection");

            migrationBuilder.RenameTable(
                name: "Meals",
                newName: "meals");

            migrationBuilder.RenameTable(
                name: "MealIngredients",
                newName: "mealIngredients");

            migrationBuilder.RenameTable(
                name: "Ingredients",
                newName: "ingredients");

            migrationBuilder.RenameTable(
                name: "Directions",
                newName: "directions");

            migrationBuilder.RenameTable(
                name: "Accounts",
                newName: "accounts");

            migrationBuilder.RenameColumn(
                name: "SubcriptionId",
                table: "plans",
                newName: "AccountTypeId");

            migrationBuilder.RenameIndex(
                name: "IX_Plans_AccountId",
                table: "plans",
                newName: "IX_plans_AccountId");

            migrationBuilder.RenameIndex(
                name: "IX_Plans_SubcriptionId",
                table: "plans",
                newName: "IX_plans_AccountTypeId");

            migrationBuilder.RenameIndex(
                name: "IX_NutritionFacts_NutritionId",
                table: "nutritionFacts",
                newName: "IX_nutritionFacts_NutritionId");

            migrationBuilder.RenameIndex(
                name: "IX_NutritionFacts_MealId",
                table: "nutritionFacts",
                newName: "IX_nutritionFacts_MealId");

            migrationBuilder.RenameColumn(
                name: "TagId",
                table: "mealTags",
                newName: "Id");

            migrationBuilder.RenameIndex(
                name: "IX_MealIngredients_MealId",
                table: "mealIngredients",
                newName: "IX_mealIngredients_MealId");

            migrationBuilder.RenameIndex(
                name: "IX_MealIngredients_IngredidentId",
                table: "mealIngredients",
                newName: "IX_mealIngredients_IngredidentId");

            migrationBuilder.RenameIndex(
                name: "IX_Directions_MealId",
                table: "directions",
                newName: "IX_directions_MealId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_tags",
                table: "tags",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_plans",
                table: "plans",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_nutritions",
                table: "nutritions",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_nutritionFacts",
                table: "nutritionFacts",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_mealTags",
                table: "mealTags",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_mealSelectionItem",
                table: "mealSelectionItem",
                column: "MealSelectionId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_mealSelection",
                table: "mealSelection",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_meals",
                table: "meals",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_mealIngredients",
                table: "mealIngredients",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_ingredients",
                table: "ingredients",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_directions",
                table: "directions",
                column: "Id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_accounts",
                table: "accounts",
                column: "Id");

            migrationBuilder.CreateTable(
                name: "accountsDetail",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    AccountId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    EndDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    MaximumCalories = table.Column<int>(type: "int", nullable: false),
                    MaximumDifficulty = table.Column<int>(type: "int", nullable: false),
                    MinimumCalories = table.Column<int>(type: "int", nullable: false),
                    StartDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    TagId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Total = table.Column<int>(type: "int", nullable: false),
                    UserAmount = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_accountsDetail", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "accountTypes",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Code = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Duration = table.Column<int>(type: "int", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Value = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_accountTypes", x => x.Id);
                });

            migrationBuilder.AddForeignKey(
                name: "FK_directions_meals_MealId",
                table: "directions",
                column: "MealId",
                principalTable: "meals",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_mealIngredients_ingredients_IngredidentId",
                table: "mealIngredients",
                column: "IngredidentId",
                principalTable: "ingredients",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_mealIngredients_meals_MealId",
                table: "mealIngredients",
                column: "MealId",
                principalTable: "meals",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_nutritionFacts_meals_MealId",
                table: "nutritionFacts",
                column: "MealId",
                principalTable: "meals",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_nutritionFacts_nutritions_NutritionId",
                table: "nutritionFacts",
                column: "NutritionId",
                principalTable: "nutritions",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_plans_accountTypes_AccountTypeId",
                table: "plans",
                column: "AccountTypeId",
                principalTable: "accountTypes",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_plans_accounts_AccountId",
                table: "plans",
                column: "AccountId",
                principalTable: "accounts",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
