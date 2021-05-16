--kullanıcı tablosunu oluşturma
create table "public"."users"(
	"id" serial primary key,
	"password" varchar(25) NOT Null,
	"email"	varchar(25) NOT Null	
);

--iş arayan tablosunu oluşturma
create table "public"."employees"(
	"id" int NOT Null,
	"first_name" varchar(25) NOT Null,
	"last_name"	varchar(25) NOT Null,
	"identity_number" varchar(11) NOT Null,
	"birth_date" date NOT Null	
);

--iş veren tablosunu oluşturma
create table "public"."employers"(
	"id" int NOT Null,
	"company_name" varchar(25) NOT Null,
	"phone" varchar(11) NOT Null
	"position_id" int NOT Null,
);

--sistem personeli tablosunu oluşturma
create table "public"."system_personnels"(
	"id" int NOT Null,
	"first_name" varchar(25) NOT Null,
	"last_name"	varchar(25) NOT Null	
);

--iş pozisyonu tablosunu oluşturma
create table "public"."job_positions"(
	"id" int NOT Null,
	"position" varchar(25) NOT Null
);

--primaryKey atama
ALTER TABLE "public"."users" ADD CONSTRAINT "pk_user" PRIMARY KEY ("id");
ALTER TABLE "public"."employees" ADD CONSTRAINT "pk_employees" PRIMARY KEY ("id");
ALTER TABLE "public"."employers" ADD CONSTRAINT "pk_employers" PRIMARY KEY ("id");
ALTER TABLE "public"."system_personnels" ADD CONSTRAINT "pk_personnel" PRIMARY KEY ("id");
ALTER TABLE "public"."job_positions" ADD CONSTRAINT "pk_position" PRIMARY KEY ("id");

--foreignKey atama
ALTER TABLE "public"."employees" ADD CONSTRAINT "fk_employees_users" FOREIGN KEY ("id") REFERENCES "public"."users" ( "id");
ALTER TABLE "public"."employers" ADD CONSTRAINT "fk_employers_users" FOREIGN KEY ("id") REFERENCES "public"."users" ( "id");
ALTER TABLE "public"."system_personnels" ADD CONSTRAINT "fk_system_personnels_users" FOREIGN KEY ("id") REFERENCES "public"."users" ( "id");

--uniqueKey atama
ALTER TABLE "public"."users" ADD CONSTRAINT "uk_users_eMail" UNIQUE ("email");
ALTER TABLE "public"."employees" ADD CONSTRAINT "uk_employees_identityNumber" UNIQUE ("identity_number");
ALTER TABLE "public"."employers" ADD CONSTRAINT "uk_employers_company_name" UNIQUE ("company_name");

--id değerlerini otomatik arttırma
CREATE SEQUENCE "public"."users_id_seq" INCREMENT BY 1 START WITH 1 OWNED BY "public"."users"."id";
CREATE SEQUENCE "public"."job_positions_id_seq" INCREMENT BY 1 START WITH 1 OWNED BY "public"."job_positions"."id";

--tabloları görüntüleme
select * from users
select * from employees
select * from employers
select * from system_personnels
select * from job_positions

select * from employees,users
select * from employers,users
select * from system_personnels,users

