create table Transaction(
transaction_id int PRIMARY KEY NOT NULL
,prod_prim_id int NOT NULL
,customer_id int NOT NULL
,transaction_date date
,online_order boolean
,order_status varchar(10)
,list_price float4
,standart_cost float4
)

create table Product(
  prod_prim_id SERIAL PRIMARY KEY NOT NULL REFERENCES Transaction(prod_prim_id)
  ,product_id int
  ,brand varchar(15)
  ,product_line varchar(15)
  ,product_class varchar(10)
  ,product_size varchar(10)
  ,unique (
  product_id
  , brand
  , product_line
  , product_class
  , product_size
  )
)

create table Customer(
  customer_id int PRIMARY KEY NOT NULL REFERENCES Transaction(customer_id)
  ,first_name varchar(15) NULL NULL
  ,last_name varchar(15)
  ,gender varchar(6)
  ,DOB date
  ,job_title varchar(30)
  ,job_industry_category varchar(20)
  ,wealth_segment varchar(20)
  ,deceased_indicator varchar(3)
  ,own_car varchar(3)
  ,property_valuation int
  ,country varchar(15)
)

create table Adress(
  customer_id int PRIMARY KEY NOT NULL REFERENCES Customer(customer_id)
  ,house varchar(7)
  ,street varchar(30)
  ,state varchar(15)
)

create table Postcode(
  customer_id int PRIMARY KEY NOT NULL REFERENCES Customer(customer_id)
  ,postcode int
)

insert into Product values
(2, ‘Solex’,	‘Standard’,	‘medium’,	‘medium’),
(3, ‘Trek_Bicycles’,	‘Standard’,	‘medium’,	‘large’),
(37, ‘OHM_Cycles’,	‘Standard’,	‘low’,	‘medium’),
(88, ‘Norco_Bicycles’,	Standard’,	‘medium,	‘medium’),
(78, ‘Giant_Bicycles’,	‘Standard’,	‘medium’,	‘large’),
(25, ‘Giant_Bicycles’,	‘Road’,	‘medium’,	‘medium’),
(22, ‘WeareA2B’,	‘Standard’,	‘medium’,	‘medium’),
(15, ‘WeareA2B’,	‘Standard’,	‘medium’,	‘medium’),
(67, ‘Solex’,	‘Standard’,	‘medium’,	‘large’),
(12, ‘WeareA2B’,	‘Standard’,	‘medium’,	‘medium’);


insert into Transaction values
(1, 1,	2950,	'25.02.2017',	False,	'Approved', 71.49,	53.62),
(2,	2,	3120,	'21.05.2017',	True,	‘Approved’, 2091.47,	388.92),
(3,	3,	402,	'16.10.2017',	False,	‘Approved’, 1793.43,	248.82),
(4,	4,	3135,	'31.08.2017',	False,	Approved, 1198.46,	381.10),
(5,	5, 787,	'01.10.2017',	True,	‘Approved’,	1765.3,	709.48),
(6,	6,	2339,	'08.03.2017',	True,	‘Approved’,	1538.99,	829.65),
(7,	7,	1542,	'21.04.2017',	True,	‘Approved’, 60.34,	45.26),
(8,	8,	2459,	'15.07.2017',	False,	‘Approved’, 1292.84,	13.44),
(9,	9,	1305,	'10.08.2017',	False,	‘Approved’, 1071.23,	380.74),
(10,	10,	3262,	'30.08.2017',	True,	‘Approved’,	1231.15,	161.60);


insert into Customer values
(2950,	‘Kristos’,	‘Anthony’,	‘Male’,	1955-01-11,	‘Software_Engineer_I’,	‘Financial_Services’,	‘Mass_Customer’,	‘N’,	‘Yes’,	8, ‘Australia’),
(3120,	‘Lauree’,	‘O'Donnel’,	‘Female’	1979-02-04,	‘Clinical_Specialist’,	‘Health’,	‘Mass_Customer’,	‘N’,	‘Yes’,	6, ‘Australia’),
(402,	‘Berne’,	‘Donegan’,	‘Male’, 1977-06-03,	‘Desktop_Support_Technician’,	‘Retail’,	‘Affluent_Customer’,	‘N’,	‘No’, 1, ‘Australia’),
(3135,  ‘Titus’,	‘Worsall’,	‘Male’,	1962-01-14,	‘Staff_Scientist’,	‘Financial_Services’,	‘Mass_Customer’,	‘N’,	‘No’, 7, ‘Australia’),
(787,	‘Norma’,	‘Batrim’,	‘Female’, 1996-12-15, NULL,	‘Retail’,	‘Affluent_Customer’,	‘N’,	‘Yes’,	10, ‘Australia’),
(2339,	‘Damien’	‘Haddeston’	‘Male’	1958-12-28	‘Web_Designer_II’	‘Property’	‘Affluent_Customer’	‘N’	‘Yes’, 5, ‘Australia’),
(1542,	‘Sanders’, ‘Fernyhough’,	‘Male’,	1978-07-27,	‘Food_Chemist’,	 ‘Health’,	‘Mass_Customer’,	‘N’,	‘Yes’,	10, Australia),
(2549,	‘Mike’,	‘Geggus’,	‘Male’,	1998-08-07,	‘Pharmacist’,	‘Health’,	‘Mass_Customer’,	‘N’,	‘Yes’, 7,	‘Australia’),
(1305,	‘Averil’,	‘Gentiry’,	‘Male’,	1970-03-01,	‘Executive_Secretary’,	‘Financial_Services’,	‘High_Net_Worth’,	‘N’,	‘Yes’,	8,	‘Australia’),
(3262,	‘Maynord’,	‘LEpiscopi’, ‘Male’,	1959-10-14, ‘Product_Engineer’,	‘Entertainment’,	‘Mass_Customer’,	‘N’, ‘No’,	12, ‘Australia’);	

insert into Adress values
(2950, 3, ‘New_castle_terrace’,	‘VIC’),
(3120, 32, ‘Elmside_Point’,	‘NSW’),
(402, 07, ‘New_Castle_Circle’, ‘NSW’),
(3135, 24712, ‘Hazelcrest_Lane’, ‘VIC’),
(787, 79, ‘Arkansas_Drive’, ‘VIC’),
(2339, 533, ‘Ramsey_Center’,	‘QLD’),
(1542, 2, ‘Eastwood_Street’,	‘NSW’),
(2549, 463, ‘Atwood_Court’, ‘QLD’),
(1305, 515, ‘Bunting_Point’,	‘QLD’),
(3262, 3, ‘Myrtle_Pass’,	‘NSW’);

insert into Postcode values
(2950, 3032),
(3120, 2560),
(402, 2646),
(3135, 3024),
(787, 3008),
(2339, 4507),
(1542, 2153),
(2549, 4160),
(1305, 4115),
(3262, 2095);


