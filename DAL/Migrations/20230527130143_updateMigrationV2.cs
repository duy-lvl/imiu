using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DAL.Migrations
{
    /// <inheritdoc />
    public partial class updateMigrationV2 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_MealSelection_Accounts_AccountId1",
                table: "MealSelection");

            migrationBuilder.DropIndex(
                name: "IX_MealSelection_AccountId1",
                table: "MealSelection");

            migrationBuilder.DropColumn(
                name: "AccountId1",
                table: "MealSelection");

            migrationBuilder.AddColumn<Guid>(
                name: "AccountId",
                table: "MealSelection",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<DateTime>(
                name: "SelectDate",
                table: "MealSelection",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.CreateIndex(
                name: "IX_MealSelection_AccountId",
                table: "MealSelection",
                column: "AccountId");

            migrationBuilder.AddForeignKey(
                name: "FK_MealSelection_Accounts_AccountId",
                table: "MealSelection",
                column: "AccountId",
                principalTable: "Accounts",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_MealSelection_Accounts_AccountId",
                table: "MealSelection");

            migrationBuilder.DropIndex(
                name: "IX_MealSelection_AccountId",
                table: "MealSelection");

            migrationBuilder.DropColumn(
                name: "AccountId",
                table: "MealSelection");

            migrationBuilder.DropColumn(
                name: "SelectDate",
                table: "MealSelection");

            migrationBuilder.AddColumn<Guid>(
                name: "AccountId1",
                table: "MealSelection",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_MealSelection_AccountId1",
                table: "MealSelection",
                column: "AccountId1");

            migrationBuilder.AddForeignKey(
                name: "FK_MealSelection_Accounts_AccountId1",
                table: "MealSelection",
                column: "AccountId1",
                principalTable: "Accounts",
                principalColumn: "Id");
        }
    }
}
