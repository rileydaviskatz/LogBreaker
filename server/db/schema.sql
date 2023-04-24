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

create table library (
    foreign key (id_game) references game(id),
    foreign key (gameTitle) references game(title),

);

create table game (
    id int not null primary key auto_increment,
    title varchar(255) not null,
    --text [description] varchar(1000), 
    summary varchar(1000),
    foreign key (id_user) references users(id),
    gameLength int not null,
    publisher varchar(50),
    gameConsole varchar(50),
    releaseDate date null,
     
); 

create table backlog (
    foreign key (game_title) references game(title),
    foreign key (id_game) references game(id),
);


