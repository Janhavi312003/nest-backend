-- AlterTable
ALTER TABLE "Todo" ADD COLUMN     "userEmail" TEXT;

-- CreateIndex
CREATE INDEX "Todo_userEmail_idx" ON "Todo"("userEmail");

-- AddForeignKey
ALTER TABLE "Todo" ADD CONSTRAINT "Todo_userEmail_fkey" FOREIGN KEY ("userEmail") REFERENCES "User"("email") ON DELETE SET NULL ON UPDATE CASCADE;
