--create database if not exists `test`;

drop database if exists logbreaker; 
create database logbreaker;

use logbreaker;

-- create table users (
    -- id int(11) unsigned not null auto_increment,
    -- username varchar(255) not null,
    -- password varchar(255) not null,
    -- email varchar(255) not null,
    -- created_at timestamp not null default current_timestamp,
    -- updated_at timestamp not null default current_timestamp on update current_timestamp,
    -- primary key (id)
    -- );

create table users (
    id int not null primary key auto_increment,
    username varchar(255) not null,
    --password varchar(255) not null,
);

create table games (
    id int not null primary key auto_increment,
    title varchar(255) not null,
    --text [description] varchar(1000), 
    summary varchar(1000),
    id_user int not null,
    foreign key (id_user) references users(id)
); 

