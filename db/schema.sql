-- auto-generated definition
create table brand
(
    id   serial
        constraint brand_pkey
            primary key,
    name varchar(255)
);
-- auto-generated definition
create table type
(
    id   serial
        constraint type_pkey
            primary key,
    name varchar(255)
);
-- auto-generated definition
create table "user"
(
    id   serial
        constraint user_pkey
            primary key,
    name varchar(255)
);
-- auto-generated definition
create table ad
(
    id          serial
        constraint ad_pkey
            primary key,
    description varchar(255),
    sold        boolean not null,
    brand_id    integer
        constraint fkrehsf8m8ln09y6vr4dkn2kqv0
            references brand,
    type_id     integer
        constraint fkgmi5p1iinbg2d048dsxtypc1f
            references type,
    user_id     integer
        constraint fk766xh5t1cp8xnpmy6csu2p9pj
            references "user"
);
