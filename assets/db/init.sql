create extension if not exists "uuid-ossp";

create table social_media (
    id UUID,
    github text,
    linkedin text,
    pwebsite text,

    primary key (id)
);

create table members (
    id UUID not null,
    first_name text not null,
    last_name text not null,
    role text not null,
    social_media UUID,

    primary key (id),
    foreign key (social_media) references social_media (id)
);

insert into members (id, first_name, last_name, role)
values (uuid_generate_v4(), 'Alexander', 'Goussas', 'President'),
       (uuid_generate_v4(), 'Alina', 'Carpio', 'Secretary'),
       (uuid_generate_v4(), 'Joangie', 'Marquez', 'Vice-president'),
       (uuid_generate_v4(), 'Yiam', 'Rodriguez', 'Member');
