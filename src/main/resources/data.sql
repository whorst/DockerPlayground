INSERT INTO spring_security.users (username, password, enabled)values('user','pass',true);
INSERT INTO spring_security.users (username, password, enabled)values('admin','pass',true);
INSERT INTO spring_security.authorities (username, authority)values ('user', 'ROLE_USER');
INSERT INTO spring_security.authorities (username, authority)values ('admin', 'ROLE_ADMIN');