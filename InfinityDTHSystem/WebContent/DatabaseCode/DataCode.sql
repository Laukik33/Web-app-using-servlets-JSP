-- address_id is automatically generated by the sequence NEON_ADDRESS_TRG
CREATE TABLE neon_address (
address_id VARCHAR2(20) not null,
address1 VARCHAR2(255) not null,
address2 VARCHAR2(100),
city VARCHAR2(50) not null,
state_province VARCHAR2(50) not null,
zip_code VARCHAR2(10) not null,
phone_number VARCHAR2(12) not null,
primary key(address_id),
FOREIGN KEY (address_id)
REFERENCES neon_admin_info(address_id)
);

-- INSERT INTO neon_address (address1, ADDRESS2, city, state_province, zip_code, phone_number) VALUES ();
-- admin_id is automacticcaly generated by the sequence NEON_ADMIN_INFO_TRG
CREATE TABLE neon_admin_info (
admin_id number(5) not null,
first_name VARCHAR2(100) not null,
last_name VARCHAR2(100) not null,
date_of_birth DATE NOT NULL,
address_id VARCHAR2(20) not null,
email VARCHAR2(200) not null,
admin_username VARCHAR2(50),
admin_password VARCHAR2(50),
store_id number(5) not null,
primary key(admin_id),
FOREIGN KEY (address_id)
REFERENCES neon_address(address_id)
);
select * from table(dbms_xplan.display_cursor(sql_id=>'5bkxpybgqx9nk', format=>'ALLSTATS LAST'));

CREATE TABLE Neon_Operator (
Operator_Id VARCHAR2(20) NOT NULL PRIMARY KEY,
FirstName VARCHAR2(255) NOT NULL,
LastName VARCHAR2 (255) NOT NULL,
Email VARCHAR2 (255) NOT NULL,
Phone INT NOT NULL,
Shift_Start_Time TIMESTAMP NOT NULL,
Shift_End_Time TIMESTAMP NOT NULL,
Max_ManagedCustomers INT NOT NULL,
Creation_Date TIMESTAMP NOT NULL,
Total_ActiveCustomers INT
);

CREATE TABLE Neon_Retailer (
Retailer_ID VARCHAR2(20) NOT NULL,
Retailer_NAME VARCHAR2(255) NOT NULL,
Retailer_CONTACT1 INT NOT NULL,
Retailer_CONTACT2 INT,
ADDRESS_ID VARCHAR2(255),

Retailer_BOX_LIMIT INT NOT NULL,
Retailer_CREDIT_LIMIT INT NOT NULL,
Retailer_COMMISSION INT NOT NULL,
Retailer_SERVICE_CHARGE INT NOT NULL,
Retailer_INVENTORY_ID INT UNIQUE NOT NULL,
Retailer_CREATION_DATE TIMESTAMP NOT NULL,
Retailer_INVENTORY_COST INT NOT NULL,
PRIMARY KEY(Retailer_ID),
FOREIGN KEY (ADDRESS_ID) REFERENCES NEON_ADDRESS(ADDRESS_ID)
)

CREATE TABLE Neon_Customer (
Customer_Id int PRIMARY KEY NOT NULL,
FirstName VARCHAR2(255) NOT NULL,
LastName VARCHAR2(255) NOT NULL,
Email VARCHAR2(255) NOT NULL,
Phone INT NOT NULL,
Address_id VARCHAR2(20) REFERENCES Neon_Address(address_id),
Creation_Date TIMESTAMP NOT NULL,
Operator_ID VARCHAR2 (20) REFERENCES Neon_Operator(operator_id),
Retailer_ID VARCHAR2(20) REFERENCES Neon_Retailer(retailer_id)
);