/*
Created: 7/29/2015
Modified: 8/17/2015
Project: EDR Logging
Model: Physical Data Model
Database: PostgreSQL 9.4
*/


-- Create tables section -------------------------------------------------

-- Table LogItem

CREATE TABLE "LogItem"(
 "LogItemID" Integer NOT NULL,
 "LogModuleUsed" Character varying(256),
 "AuthenticatedEntity" Character varying(256),
 "AuthenticatedType" Character varying(256),
 "CreatedTimestamp" Timestamp,
 "UpdatedTimestamp" Timestamp,
 "ApplicationID" Integer,
 "ApplicationProcessID" Integer
)
;

-- Create indexes for table LogItem

CREATE INDEX "IX_Application_LogItem" ON "LogItem" ("ApplicationID")
;

CREATE INDEX "IX_ApplicationProcess_LogItem" ON "LogItem" ("ApplicationProcessID")
;

-- Add keys for table LogItem

ALTER TABLE "LogItem" ADD CONSTRAINT "LogItemID" PRIMARY KEY ("LogItemID")
;

-- Table ApplicationInfo

CREATE TABLE "ApplicationInfo"(
 "ApplicationInfoID" Integer NOT NULL,
 "ApplicationType" Character varying(256),
 "ApplicationName" Character varying(256),
 "ApplicationVersion" Character varying(256),
 "LanguageVersion" Character varying(256),
 "Attribute1" Integer,
 "CreatedTimestamp" Timestamp,
 "UpdatedTimestamp" Timestamp
)
;

-- Create indexes for table ApplicationInfo

CREATE INDEX "IX_Logs Application Info" ON "ApplicationInfo" ("Attribute1")
;

-- Add keys for table ApplicationInfo

ALTER TABLE "ApplicationInfo" ADD CONSTRAINT "ApplicationInfoID" PRIMARY KEY ("ApplicationInfoID")
;

-- Table EnvironmentalInfo

CREATE TABLE "EnvironmentalInfo"(
 "EnvironmentInfoID" Integer NOT NULL,
 "UserAgent" Character varying(256),
 "BrowserType" Character varying(256),
 "BrowserVersion" Character varying(256),
 "MajorVersion" Character varying(256),
 "MinorVersion" Character varying(256),
 "BrowserPlatform" Character varying(256),
 "EdrHost" Character varying(256),
 "EdrEnvironment" Character varying(256),
 "ReferrerURL" Character varying(256),
 "RequestURL" Character varying(256),
 "WebRemoteClientIP" Character varying(256),
 "Attribute1" Integer,
 "CreatedTimestamp" Timestamp,
 "UpdatedTimestamp" Timestamp
)
;

-- Create indexes for table EnvironmentalInfo

CREATE INDEX "IX_Logs Environmental Info" ON "EnvironmentalInfo" ("Attribute1")
;

-- Add keys for table EnvironmentalInfo

ALTER TABLE "EnvironmentalInfo" ADD CONSTRAINT "EnvironmentalInfoID" PRIMARY KEY ("EnvironmentInfoID")
;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------



-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

