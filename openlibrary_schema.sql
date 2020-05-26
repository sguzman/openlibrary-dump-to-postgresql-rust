create table dump
(
	id bigserial not null,
	type text not null,
	about text not null,
	num smallint not null,
	date timestamp not null,
	data jsonb not null
);

create unique index dump_data_uindex
	on dump (data);

create unique index dump_id_uindex
	on dump (id);

alter table dump
	add constraint dump_pk
		primary key (id);


