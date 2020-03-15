create database spring_security;
create table spring_security.users( username varchar(50) not null primary key,password varchar(50) not null,enabled boolean not null);
create table spring_security.authorities (username varchar(50) not null,authority varchar(50) not null,constraint fk_authorities_users foreign key(username) references users(username));
create unique index ix_auth_username on spring_security.authorities (username,authority);

INSERT INTO spring_security.users (username, password, enabled)values('user','pass',true);
INSERT INTO spring_security.users (username, password, enabled)values('admin','pass',true);
INSERT INTO spring_security.authorities (username, authority)values ('user', 'ROLE_USER');
INSERT INTO spring_security.authorities (username, authority)values ('admin', 'ROLE_ADMIN');