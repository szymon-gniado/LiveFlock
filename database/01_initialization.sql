use liveflock;

create or replace table account
(
    id            uuid default uuid(),
    email         varchar(63) not null,
    username      varchar(15) not null,
    password      varchar(255) not null,
    display_name  varchar(15),
    creation_date date default current_date(),
    creation_time time default current_time(),
    avatar        varchar(255),
    PRIMARY KEY (id)
);

create or replace table board
(
    id            uuid default uuid(),
    name         varchar(63) not null,
    description   varchar(63),
    creation_date date default current_date(),
    creation_time time default current_time(),
    avatar        varchar(127),
    PRIMARY KEY (id)
);

create or replace table post
(
    id            uuid default uuid(),
    author        uuid        not null,
    title         varchar(63) not null,
    content       varchar(255) not null,
    creation_date date default current_date(),
    creation_time time default current_time(),
    parent        uuid,
    PRIMARY KEY (id),
    index (author),
    FOREIGN KEY (author) REFERENCES account (id),
    FOREIGN KEY (parent) REFERENCES post (id)
);

create or replace table account_board
(
    account uuid not null,
    board   uuid not null,
    owner   boolean default 0,
    editor  boolean default 0,
    PRIMARY KEY (account, board),
    index (board),
    FOREIGN KEY (account) REFERENCES account (id)
        on delete cascade
        on update restrict,
    FOREIGN KEY (board) REFERENCES board (id)
        on delete cascade
        on update restrict
);

create or replace table board_post
(
    board uuid not null,
    post  uuid not null,
    PRIMARY KEY (board, post),
    index (board),
    FOREIGN KEY (board)
        REFERENCES board (id)
        on delete cascade
        on update restrict,
    FOREIGN KEY (post) REFERENCES post (id)
        on delete cascade
        on update restrict
);

create view account_view as
select
    a.username,
    a.display_name,
    a.avatar
from account a;

create view board_view as
select
    b.name,
    b.avatar
from board b;

create view post_view as
select
    p.id,
    p.author,
    p.title,
    p.content,
    p.creation_date,
    p.creation_time,
    p.parent
from post p;

create view account_details as
select
    a.email,
    a.username,
    a.display_name,
    a.creation_date,
    a.avatar
from account a;

create view board_details as
select
    b.name,
    b.description,
    b.creation_date,
    b.creation_time,
    b.avatar
from board b;

create view account_board_view as
select
    a.username account,
    b.name board,
    b.avatar board_avatar
from board b, account a
                  inner join account_board ab on ab.account = a.id;

create view account_post_view as
select
    p.title,
    p.creation_date,
    p.creation_time
from post p;

create view board_account_view as
select
    av.*,
    ab.owner,
    ab.editor
from account_view av, account a
                          inner join account_board ab on ab.account = a.id;

create view board_post_view as
select
    p.id post,
    p.title,
    p.creation_date,
    p.creation_time,
    a.username author
from post p
         inner join account a on a.id = p.author
         inner join board_post bp on bp.post = p.id;

create view post_board_view as
select
    bv.*
from board_view bv, board
                        inner join post p on p.id = board.id;

-- Insert data into the account table
INSERT INTO account (email, username, password, display_name, avatar)
VALUES 
    ('user1@example.com', 'user1', 'password1', 'User One', 'avatar1.png'),
    ('user2@example.com', 'user2', 'password2', 'User Two', 'avatar2.png'),
    ('user3@example.com', 'user3', 'password3', 'User Three', 'avatar3.png'),
    ('user4@example.com', 'user4', 'password4', 'User Four', 'avatar4.png'),
    ('user5@example.com', 'user5', 'password5', 'User Five', 'avatar5.png');

