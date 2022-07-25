-- CreateEnum
CREATE TYPE "Service" AS ENUM ('SPOTIFY', 'APPLE_MUSIC', 'YT_MUSIC');

-- CreateTable
CREATE TABLE "Link" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "service" "Service" NOT NULL,
    "url" VARCHAR(255) NOT NULL,
    "smartLinkId" INTEGER NOT NULL,

    CONSTRAINT "Link_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SmartLink" (
    "id" SERIAL NOT NULL,

    CONSTRAINT "SmartLink_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Link" ADD CONSTRAINT "Link_smartLinkId_fkey" FOREIGN KEY ("smartLinkId") REFERENCES "SmartLink"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
