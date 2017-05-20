create table apartments
(
	apartment_id int not null
		primary key,
	category_id int not null
)
;

create index categories_FK_idx
	on apartments (category_id)
;

create table categories
(
	category_id int not null auto_increment
		primary key,
	type varchar(6) not null,
	number_of_beds int not null,
	price int not null,
	constraint category_UNIQUE
		unique (type, number_of_beds)
)
;

alter table apartments
	add constraint categories_FK
		foreign key (category_id) references hoteldb.categories (category_id)
			on update cascade on delete cascade
;

create table guests
(
	guest_id int not null auto_increment
		primary key,
	name varchar(20) not null,
	last_name varchar(30) not null,
	phone_number varchar(20) not null,
	email varchar(45) not null,
	login varchar(20) not null,
	password varchar(32) not null,
	constraint login_UNIQUE
		unique (login)
)
;

create table reservations
(
	reservation_id int not null auto_increment
		primary key,
	guest_id int not null,
	apartment_id int not null,
	arrival date not null,
	departure date not null,
	total_price int not null,
	constraint guests_FK
		foreign key (guest_id) references hoteldb.guests (guest_id)
			on update cascade on delete cascade,
	constraint apartments_FK
		foreign key (apartment_id) references hoteldb.apartments (apartment_id)
			on update cascade on delete cascade
)
;

create index apartments_FK_idx
	on reservations (apartment_id)
;

create index guests_FK_idx
	on reservations (guest_id)
;