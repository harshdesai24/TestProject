-- Table Events

CREATE TABLE "Events"(
 "EventsID" Bigint NOT NULL,
 "EventType" Character varying(256),
 "Attribute1" Integer,
 "CreatedTimestamp" Timestamp,
 "UpdatedTimestamp" Timestamp
)
;

-- Create indexes for table Events

CREATE INDEX "IX_Logs Events" ON "Events" ("Attribute1")
;

-- Add keys for table Events

ALTER TABLE "Events" ADD CONSTRAINT "EventsID" PRIMARY KEY ("EventsID")
;

-- Table ExceptionDetail

CREATE TABLE "ExceptionDetail"(
 "ExceptionDetailID" Integer NOT NULL,
 "AssertionFailure" Character varying(256),
 "ExceptionMessage" Character varying(256),
 "StackTrace" Character varying(256),
 "NativeExceptionType" Character varying(256),
 "Attribute1" Integer NOT NULL,
 "CreatedTimestamp" Timestamp,
 "UpdatedTimestamp" Bigint
)
;

-- Add keys for table ExceptionDetail

ALTER TABLE "ExceptionDetail" ADD CONSTRAINT "ExceptionDetailID" PRIMARY KEY ("Attribute1","ExceptionDetailID")
;

-- Table UsageDetail

CREATE TABLE "UsageDetail"(
 "UsageDetailID" Integer NOT NULL,
 "Category" Character varying(256),
 "SubCategory" Character varying(256),
 "EntityType" Character varying(256),
 "EntityID" Character varying(256),
 "UsageData" Character varying(256),
 "Attribute1" Integer NOT NULL,
 "CreatedTimestamp" Timestamp,
 "UpdatedTimestamp" Bigint
)
;

-- Add keys for table UsageDetail

ALTER TABLE "UsageDetail" ADD CONSTRAINT "UsageDetailID" PRIMARY KEY ("Attribute1","UsageDetailID")
;

-- Table LogDetail

CREATE TABLE "LogDetail"(
 "LogDetailID" Integer NOT NULL,
 "LogSource" Character varying(256),
 "LogSourceType" Character varying(256),
 "SourcePath" Character varying(256),
 "LogData" Character varying(256),
 "Attribute1" Integer NOT NULL,
 "CreatedTimestamp" Timestamp,
 "UpdatedTimestamp" Timestamp
)
;

-- Add keys for table LogDetail

ALTER TABLE "LogDetail" ADD CONSTRAINT "LogDetailID" PRIMARY KEY ("Attribute1","LogDetailID")
;