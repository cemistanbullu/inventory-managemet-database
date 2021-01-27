create table Origin
  (originId	number(3),
   countryName varchar2(20),
   primary key(originId));

create table Location
  (locationId number(3),
   locationAvailable number(5), 
    gate varchar2(20),
    primary key(locationId));

create table ItemCategory
  (itemCategoryId number(3),
   category varchar2(20),
    primary key(itemCategoryId));

create table Item
  (itemId number(5),
   itemName varchar2(20),
   itemCategoryId number(3),
   primary key(itemId),
   foreign key(itemCategoryId) references ItemCategory(ItemCategoryId));

create table ItemDescription
  (itemDetailId number(5),
   itemId number(5),
   quantity number(5),
   sellingPrice number(5),
   date_in date,
   primary key(itemDetailId),
   foreign key(itemId) references Item(itemId));

create table Supplier
  (supplierId number(5),
   companyName varchar2(20),
   originId number(3),
   primary key(supplierId),
   foreign key(originId) references Origin(originId));

create table SupplierItem
   (supplierItemId number(5),
    supplierId number(5),
    itemId number(5),
    buyingPrice number(5),
    primary key(supplierItemId),
    foreign key(supplierId) references Supplier(supplierId),
    foreign key(itemId) references Item(itemId));

create table ItemLocation
   (itemLocationId number(3),
    locationId number(3),
    itemDetailId number(5),
    primary key(itemLocationId),
    foreign key(locationId) references Location(locationId),
    foreign key(itemDetailId) references ItemDescription(itemDetailId));

insert into Origin values (111, 'Turkey');
insert into Origin values (112, 'Germany');
insert into Origin values (113, 'Canada');
insert into Origin values (114, 'USA');
insert into Origin values (115, 'China');
insert into Origin values (116, 'France');

insert into Location values (101, 50, 'A-101');
insert into Location values (202, 20, 'B-201');
insert into Location values (303, 110, 'C-301');
insert into Location values (404, 75, 'D-401');
insert into Location values (505, 48, 'F-501');

insert into ItemCategory values (208, 'cosmetic');
insert into ItemCategory values (105, 'food');
insert into ItemCategory values (898, 'textile');
insert into ItemCategory values (354, 'electronic');

insert into Item values (88151, 'shampo', 208);
insert into Item values (64092, 'laptop', 354);
insert into Item values (41873, 'tshirt', 898);
insert into Item values (99101, 'lemon', 105);
insert into Item values (64143, 'phone', 354);
insert into Item values (41909, 'coat', 898);
insert into Item values (88423, 'perfume', 208);
insert into Item values (41111, 'television', 354);
insert into Item values (99398, 'coffee', 105);

insert into ItemDescription values (12345, 88151, 500, 10, TO_DATE ('04/17/2020', 'mm/dd/yyyy'));
insert into ItemDescription values (98765, 64092, 100, 2000, TO_DATE ('01/22/2020', 'mm/dd/yyyy')); 
insert into ItemDescription values (34861, 41873, 10000, 5, TO_DATE ('09/12/2020', 'mm/dd/yyyy')); 
insert into ItemDescription values (38582, 99101, 5000, 2, TO_DATE ('01/01/2021', 'mm/dd/yyyy'));
insert into ItemDescription values (59201, 64143, 20, 500, TO_DATE ('10/11/2019', 'mm/dd/yyyy'));
insert into ItemDescription values (29090, 41909, 150, 350, TO_DATE ('04/10/2018', 'mm/dd/yyyy')); 
insert into ItemDescription values (56754, 88423, 405, 175, TO_DATE ('12/10/2019', 'mm/dd/yyyy'));
insert into ItemDescription values (29404, 41111, 565, 1500, TO_DATE ('02/24/2019', 'mm/dd/yyyy'));
insert into ItemDescription values (38404, 99398, 190, 85, TO_DATE ('10/10/2020', 'mm/dd/yyyy'));

insert into Supplier values (469, 'Wallmart',114);
insert into Supplier values (190, 'Arcelik', 111);
insert into Supplier values (154, 'Brooks Sisters', 114);
insert into Supplier values (351, 'Siemens', 112);
insert into Supplier values (456, 'Starbucks', 113);
insert into Supplier values (390, 'English Home', 111);

insert into SupplierItem values (1212, 190, 41111, 1000);
insert into SupplierItem values (2772, 469, 99101, 1);
insert into SupplierItem values (6233, 456, 99398, 40);
insert into SupplierItem values (6409, 154, 41873, 3);
insert into SupplierItem values (8635, 390, 41909, 230);
insert into SupplierItem values (4672, 351, 64143, 350);
insert into SupplierItem values (3567, 469, 88151, 7);
insert into SupplierItem values (9563, 154, 88423, 30);
insert into SupplierItem values (7894, 190, 64092, 1900);

insert into ItemLocation values (232, 101, 12345);
insert into ItemLocation values (523, 202, 98765);
insert into ItemLocation values (989, 303, 34861);
insert into ItemLocation values (648, 404, 38582);
insert into ItemLocation values (479, 101, 59201);
insert into ItemLocation values (288, 202, 29090);
insert into ItemLocation values (432, 303, 56754);
insert into ItemLocation values (849, 404, 29404);
insert into ItemLocation values (329, 101, 38404);





