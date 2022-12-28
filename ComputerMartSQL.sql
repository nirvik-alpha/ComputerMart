

create database dbMyOnlineShopping

go
use dbMyOnlineShopping
go


create table Tbl_Cateogry
(
	CategoryId int identity primary Key,
	CategoryName varchar(500) unique,
	IsActive bit null,
	IsDelete bit null

)

create table Tbl_Product
(
	ProductId int identity primary Key,
	ProductName varchar(500) unique,
	CategoryId int,
	IsActive bit null,
	IsDelete bit null,
	CreatedDate datetime null,
	ModifiedDate datetime null,
	Description datetime null,
	ProductImage varchar(max),
	IsFeatured bit null,
	Quantity int,
	foreign key (CategoryId) references Tbl_Cateogry(CategoryId)

)


create table Tbl_CartStatus
(
	CartStatusId int identity primary Key,
	CartStatus varchar(500)

)

create table Tbl_Members
(
	Memberid int identity primary key,
	FirstName varchar(200), 
	LastName varchar(200),
	EmailId varchar(200) unique,
	Password varchar(500),
	IsActive bit null,
	IsDelete bit null,
	CreatedOn datetime,
	ModifiedOn datetime

)


create table Tbl_ShippingDetails
(
	ShippingDetailId int identity primary Key,
	MemberId int,
	Adress varchar(500),
	City varchar(500),
	State varchar(500),
	Country varchar(50),

	ZipCode varchar(50),
	OrderId int,
	AmountPaid decimal,
	PaymentType varchar(50),
	foreign key (MemberId) references Tbl_Members(MemberId)
)

create table Tbl_Roles
(
	RoleId int identity primary key,
	RoleName varchar(200) unique
)

create table Tbl_Cart
(
	CartId int identity primary key,
	ProductId int ,
	MemberId int ,
	CartStatusId int,
	foreign key (ProductId) references Tbl_Product(ProductId)

)

create table Tbl_MemberRole
(
	MemberRoleID int identity primary key,
	memberId int ,
	RoleId int

)

create table Tbl_Slideimage
(
	SlideId int identity primary key,
	SlideTilte varchar(500),
	SlideImage varchar(max)
)

create table Reg
(
	UserId int identity primary key,
	FirstName varchar(200),
	LastName varchar(200),
	UserName varchar(200),
	Password varchar(500)

)












