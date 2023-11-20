create database liveflock;

create user 'liveflock'@'%' identified by 'xd';
grant all privileges on liveflock.* TO 'liveflock'@'%';

use liveflock;

create or replace table account
(
    id            bigint unsigned not null auto_increment,
    email         varchar(64) not null,
    username      varchar(16) not null,
    password      varchar(256) not null,
    display_name  varchar(32),
    creation_date date        not null default current_date(),
    avatar        varchar(255),
    PRIMARY KEY (id)
);

create or replace table board
(
    id            bigint unsigned not null auto_increment,
    title         varchar(64) not null,
    description   varchar(64),
    creation_date date        not null default current_date(),
    avatar        varchar(255),
    PRIMARY KEY (id)
);

create or replace table post
(
    id            bigint unsigned not null auto_increment,
    author        bigint unsigned        not null,
    title         varchar(64) not null,
    content       varchar(16) not null,
    creation_date date        not null default current_date(),
    parent        bigint unsigned,
    PRIMARY KEY (id),
    index (author),
    FOREIGN KEY (author) REFERENCES account (id),
    FOREIGN KEY (parent) REFERENCES post (id)
);

create or replace table account_board
(
    account bigint unsigned not null,
    board   bigint unsigned not null,
    owner   boolean default 0,
    editor  boolean default 0,
    PRIMARY KEY (account, board),
    index (board),
    FOREIGN KEY (account) REFERENCES account (id),
    FOREIGN KEY (board) REFERENCES board (id)
);

create or replace table board_post
(
    board bigint unsigned not null,
    post  bigint unsigned not null,
    PRIMARY KEY (board, post),
    index (board),
    FOREIGN KEY (board) REFERENCES board (id),
    FOREIGN KEY (post) REFERENCES post (id)
);

create view account_view as
select
    a.email,
    a.username,
    a.display_name,
    a.avatar,
    ab.board belongs_to,
    ab.owner is_owner,
    ab.editor is_editor,
    p.author author_of
from account a
         inner join account_board ab on a.id = ab.account
         inner join post p on a.id = p.author;