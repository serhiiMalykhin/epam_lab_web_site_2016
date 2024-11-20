create table goods
(
  id int not null auto_increment
    primary key,
  title varchar(255) not null,
  description text not null,
  price int not null,
  srcImg text not null,
  idType int not null,
  idManufacture int not null
)
;

create table manufacturer
(
  id int not null auto_increment
    primary key,
  name varchar(500) not null
)
;

CREATE TABLE `order` (
  idOrderCart INT NOT NULL AUTO_INCREMENT,  -- Primary key for the order, auto-incremented
  iduser INT NULL,  -- Nullable if the user is not mandatory
  date BIGINT NOT NULL,  -- Unix timestamp (if needed, otherwise consider DATETIME)
  idStatus INT NOT NULL,  -- Status of the order (integer representing status)
  descriptionStatus VARCHAR(255) NOT NULL,  -- Description of the status (e.g., "Pending", "Shipped")
  address VARCHAR(150) NOT NULL,  -- Delivery address
  card VARCHAR(19) NOT NULL,  -- Card number, possibly sensitive data (needs proper handling)

  PRIMARY KEY (idOrderCart)  -- Primary key constraint on `idOrderCart`
);

create index idStatus
  on `order` (idStatus)
;

create index id_idx
  on `order` (idOrderCart)
;

create index user_idx
  on `order` (iduser)
;

create table ordercart
(
  id int not null,
  title varchar(255) not null,
  description text not null,
  price int not null,
  srcImg varchar(255) not null,
  idType int not null,
  idManufacture int not null,
  count int not null
)
;

create table payment
(
  id int not null auto_increment
    primary key,
  name varchar(10) not null,
  constraint name
  unique (name)
)
;

create table roles
(
  id int not null auto_increment
    primary key,
  r_name varchar(45) null
)
;

create table statusOrder
(
  id int not null auto_increment
    primary key,
  status varchar(50) not null,
  constraint status
  unique (status)
)
;

alter table `order`
  add constraint idStatus
foreign key (idStatus) references shopcakes.statusOrder (id)
  on update cascade on delete cascade
;

create table type
(
  id int not null auto_increment
    primary key,
  name varchar(255) not null,
  constraint name
  unique (name)
)
;

create table user
(
  iduser int not null auto_increment
    primary key,
  firstname varchar(45) null,
  secondname varchar(45) null,
  email varchar(100) null,
  password varchar(255) null,
  newsletter int null,
  role_id int default '2' null,
  constraint email
  unique (email),
  constraint email_2
  unique (email)
)
;

alter table `order`
  add constraint user
foreign key (iduser) references shopcakes.user (iduser)
  on update cascade on delete cascade
;

create table user_ban
(
  iduser int not null,
  timestart timestamp default CURRENT_TIMESTAMP not null,
  block tinyint(1) not null,
  attempt int not null
)
;

