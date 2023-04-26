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
);

create table library (
    libraryID int primary key not null identity(1,1),
    foreign key (id_game) references game(id),
    foreign key (gameTitle) references game(title),
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

--text [description] varchar(1000), 
--foreign key (id_user) references users(id),

--create table backlog (
    --foreign key (title) references game(title),
    --foreign key (id_game) references games(id),
--);


CREATE TABLE t1 (
  ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  dt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

--Foreign Key Ref Example: 

create table empAddy (
    rowID int not null primary key identity(1,1),
    empID int references empDeets (empID),
    empAddy varchar(100)
);
-- FK Column name 1st, then parent table name, then key column name (in parentheses)

create table backlog (
    logID int not null primary key auto_increment,
    gameID int references games (id),
    regDate datetime default current_timestamp on update current_timestamp,
    regTime timestamp default current_timestamp on update current_timestamp
);
-- gameID int references games (id),