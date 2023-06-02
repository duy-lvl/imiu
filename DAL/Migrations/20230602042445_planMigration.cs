using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace DAL.Migrations
{
    /// <inheritdoc />
    public partial class planMigration : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Accounts_Subcriptions_SubcriptionId",
                table: "Accounts");

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

            migrationBuilder.RenameColumn(
                name: "SubcriptionId",
                table: "Accounts",
                newName: "SubscriptionId");

            migrationBuilder.RenameIndex(
                name: "IX_Accounts_SubcriptionId",
                table: "Accounts",
                newName: "IX_Accounts_SubscriptionId");

            migrationBuilder.AddColumn<int>(
                name: "Status",
                table: "Plans",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddForeignKey(
                name: "FK_Accounts_Subcriptions_SubscriptionId",
                table: "Accounts",
                column: "SubscriptionId",
                principalTable: "Subcriptions",
                principalColumn: "Id");

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
                name: "FK_Accounts_Subcriptions_SubscriptionId",
                table: "Accounts");

            migrationBuilder.DropForeignKey(
                name: "FK_CustomerAnswer_Answers_AnswerId",
                table: "CustomerAnswer");

            migrationBuilder.DropColumn(
                name: "Status",
                table: "Plans");

            migrationBuilder.RenameColumn(
                name: "AnswerId",
                table: "CustomerAnswer",
                newName: "Answerid");

            migrationBuilder.RenameIndex(
                name: "IX_CustomerAnswer_AnswerId",
                table: "CustomerAnswer",
                newName: "IX_CustomerAnswer_Answerid");

            migrationBuilder.RenameColumn(
                name: "SubscriptionId",
                table: "Accounts",
                newName: "SubcriptionId");

            migrationBuilder.RenameIndex(
                name: "IX_Accounts_SubscriptionId",
                table: "Accounts",
                newName: "IX_Accounts_SubcriptionId");

            migrationBuilder.AddForeignKey(
                name: "FK_Accounts_Subcriptions_SubcriptionId",
                table: "Accounts",
                column: "SubcriptionId",
                principalTable: "Subcriptions",
                principalColumn: "Id");

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
