create database liveflock;

create user 'liveflock'@'localhost' identified by '^@zWU5AdQ$pDo4';
grant all privileges on liveflock.* TO 'liveflock'@'localhost';

use liveflock;

create table account (
  id int not null,
  email varchar(63) not null,
  username varchar(15) not null,
  password varchar(15) not null,
  display_name varchar(15),
  creation_date date not null,
  avatar varchar(255),
  PRIMARY KEY(id)
);

create table board (
  id int not null,
  title varchar(63) not null,
  description varchar(15),
  creation_date date not null,
  avatar varchar(255),
  PRIMARY KEY(id)
);

create table post (
  id int not null,
  author int not null,
  title varchar(63) not null,
  content varchar(15) not null,
  creation_date date not null,
  parent int,
  PRIMARY KEY(id),
  index(author),
  FOREIGN KEY(author) REFERENCES account(id),
  FOREIGN KEY(parent) REFERENCES post(id)
);

create table account_board (
  account int not null,
  board int not null,
  owner boolean,
  editor boolean,
  PRIMARY KEY(account, board),
  index(board),
  FOREIGN KEY(account) REFERENCES account(id),
  FOREIGN KEY(board) REFERENCES board(id)
);

create table board_post (
  board int not null,
  post int not null,
  PRIMARY KEY(board, post),
  index(board),
  FOREIGN KEY(board) REFERENCES board(id),
  FOREIGN KEY(post) REFERENCES post(id)
);
