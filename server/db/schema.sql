--create database if not exists `test`;

drop database if exists logbreaker; 
create database logbreaker;
use logbreaker;


create table users (
    id int not null primary key auto_increment,
    username varchar(255) not null
);

create table library (
    libraryId int primary key not null identity(1,1),
    foreign key (id_game) references game(id),
    foreign key (gameTitle) references game(title)
);

create table games (
    id int not null primary key auto_increment,
    title varchar(255) not null,
    summary varchar(1000),
    gameLength int not null,
    publisher varchar(50),
    gameConsole varchar(50),
    releaseDate date null
);     

create table t1 (
  ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  dt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

create table backlog (
    logId int not null primary key auto_increment,
    gameId int references games (id),
    loggedOn datetime default current_timestamp on update current_timestamp
);
