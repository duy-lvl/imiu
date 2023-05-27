using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DAL.Migrations
{
    /// <inheritdoc />
    public partial class updateMigrationV3 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CustomerAnswer_Answers_Answerid",
                table: "CustomerAnswer");

            migrationBuilder.RenameColumn(
                name: "Answerid",
                table: "CustomerAnswer",
                newName: "AnswerId");

            migrationBuilder.RenameIndex(
                name: "IX_CustomerAnswer_Answerid",
                table: "CustomerAnswer",
                newName: "IX_CustomerAnswer_AnswerId");

            migrationBuilder.AlterColumn<decimal>(
                name: "Value",
                table: "NutritionFacts",
                type: "decimal(18,2)",
                nullable: true,
                oldClrType: typeof(decimal),
                oldType: "decimal(18,2)");

            migrationBuilder.AlterColumn<decimal>(
                name: "Quantity",
                table: "MealIngredients",
                type: "decimal(18,2)",
                nullable: true,
                oldClrType: typeof(decimal),
                oldType: "decimal(18,2)");

            migrationBuilder.AddForeignKey(
                name: "FK_CustomerAnswer_Answers_AnswerId",
                table: "CustomerAnswer",
                column: "AnswerId",
                principalTable: "Answers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CustomerAnswer_Answers_AnswerId",
                table: "CustomerAnswer");

            migrationBuilder.RenameColumn(
                name: "AnswerId",
                table: "CustomerAnswer",
                newName: "Answerid");

            migrationBuilder.RenameIndex(
                name: "IX_CustomerAnswer_AnswerId",
                table: "CustomerAnswer",
                newName: "IX_CustomerAnswer_Answerid");

            migrationBuilder.AlterColumn<decimal>(
                name: "Value",
                table: "NutritionFacts",
                type: "decimal(18,2)",
                nullable: false,
                defaultValue: 0m,
                oldClrType: typeof(decimal),
                oldType: "decimal(18,2)",
                oldNullable: true);

            migrationBuilder.AlterColumn<decimal>(
                name: "Quantity",
                table: "MealIngredients",
                type: "decimal(18,2)",
                nullable: false,
                defaultValue: 0m,
                oldClrType: typeof(decimal),
                oldType: "decimal(18,2)",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_CustomerAnswer_Answers_Answerid",
                table: "CustomerAnswer",
                column: "Answerid",
                principalTable: "Answers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
