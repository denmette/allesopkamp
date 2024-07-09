-- Create the STATUS table
CREATE TABLE "STATUS" (
                          ID SERIAL PRIMARY KEY,
                          VERSION INTEGER NOT NULL,
                          NAME VARCHAR(255) NOT NULL
);

-- Create the COMPANY table
CREATE TABLE "COMPANY" (
                           ID SERIAL PRIMARY KEY,
                           VERSION INTEGER NOT NULL,
                           NAME VARCHAR(255) NOT NULL
);

-- Create the CONTACT table
CREATE TABLE "CONTACT" (
                           ID SERIAL PRIMARY KEY,
                           VERSION INTEGER NOT NULL,
                           EMAIL VARCHAR(255) NOT NULL,
                           FIRST_NAME VARCHAR(255) NOT NULL,
                           LAST_NAME VARCHAR(255) NOT NULL,
                           COMPANY_ID INTEGER NOT NULL REFERENCES "COMPANY" (ID),
                           STATUS_ID INTEGER NOT NULL REFERENCES "STATUS" (ID)
);