Based on provided [information](obsidian://open?vault=Knowledge-base&file=LiveFlock%20database%20phase%201%20-%20analysis), one can identify the initial entities:
- Account
- Board
- Post

One can determine the relationships between these entities as follows:
- An Account can create multiple Boards and Posts. The analysis identified the fact that an Account can can be stored in the system even if there are no associated Boards or Posts. Posts may be captured at a later point in time.
- A Board may contain many Posts or just one. It can also contain no Posts.
- A Post must be pined on at least one Board, but it may be to many and have only one author Account. Posts can be linked by parent-child relationship.

Conceptual ERD:

![[ERD.svg]]

ERD adjusted for DBMS:

![[normalizedERD.svg]]

---

One can identify the following attributes:
- Account: email, username, password, display_name, creation_date, avatar, description
- Board: title, description,owner, editor,  creation_date,avatar
- Post: title, content, author, creation_date

Table list:
- Account
- Account-Board
- Board
- Board-Post
- Post

Account Table

| Field | Definition |
| ----------- | ----------- |
| id | primary key, integer |
| email | character(63) |
| username | character(15) |
| password | character(15) |
| display_name | character(15) |
| creation_date | date |
| avatar | character(255) |

Account-Board Table

| Field | Definition |
| ----------- | ----------- |
| account | joint primary key, foreign key, integer |
| board | joint primary key, foreign key, integer |
| owner | boolean |
| editor | boolean |

Board Table

| Field | Definition |
| ----------- | ----------- |
| id | primary key, integer |
| title | character(31) |
| description | character(255) |
| creation_date | date |
| avatar | character(255) |

Board-Post Table

| Field | Definition |
| ----------- | ----------- |
| board | joint primary key, foreign key, integer |
| post | joint primary key, foreign key, integer |

Post Table

| Field | Definition |
| ----------- | ----------- |
| id | primary key, integer |
| author | foreign key, integer |
| title | character(31) |
| content | text |
| creation_date | date |
| parent | foreign key, integer |
