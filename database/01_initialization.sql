use liveflock;

create or replace table account
(
  id bigint not null auto_increment,
  username varchar(255),
  PRIMARY KEY(id)
)
