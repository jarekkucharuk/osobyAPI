begin;

create table if not exists customers
(
	id serial not null
		constraint customers_pk
			primary key,
	name varchar,
	surname varchar,
	age integer
);

create table if not exists contacts
(
	id serial not null
		constraint contacts_pk
			primary key,
	id_customer integer,
	type integer,
	contact varchar
);

alter table contacts add constraint fk_contacts_customers foreign key (id_customer) references customers(id);


end;