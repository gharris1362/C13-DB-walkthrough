use c13chirprwt;


CREATE TABLE Mentions (
userid int not null,
chirpid int not null,
primary key (userid, chirpid)
);

ALTER TABLE Mentions 
ADD FOREIGN KEY (userid) REFERENCES Users(id);

ALTER TABLE Mentions 
ADD FOREIGN KEY (chirpid) REFERENCES Chirps(id);


insert into Mentions (userid, chirpid)
values(4, 7),
(7, 89),
(9, 45);

select * from Mentions;


select Chirps.* from Chirps
join Mentions on Chirps.id = Mentions.chirpid
where Mentions.userid = 7;



CREATE TABLE Users (
id int not null auto_increment primary key,
name varchar(50) not null,
email varchar(60) not null,
password text not null,
_created datetime default current_timestamp 
);

CREATE TABLE Chirps (
id int not null auto_increment primary key,
userid int not null,
content varchar(500) not null,
location varchar(50) not null,
_created datetime default current_timestamp,
foreign key (userid) references Users(id) 
);

drop table Chirps;

select * from Users;
select * from Chirps;

INSERT INTO Users(name, email, password)
values("Garrett", "garrett@email.com", "Password1"),
 ("Josh", "Josh@email.com", "Password1"),
 ("Jake", "Jake@email.com", "Password1"),
 ("Sir", "Sir@email.com", "Password1"),
 ("Gabe", "Gabe@email.com", "Password1"),
 ("Colin", "Colin@email.com", "Password1"),
 ("Austin", "Austin@email.com", "Password1"),
 ("Jeremiah", "Jeremiah@email.com", "Password1"),
 ("Ethan", "Ethan@email.com", "Password1"),
 ("Rajan", "Rajan@email.com", "Password1");
 
 
 select * from Chirps
 join Users where Users.id = Chirps.userid;
 
 select * from Chirps
 join Users on Users.id = Chirps.userid 
 where users.id = 5;
 
 
 insert into Chirps (userid, content, location)
 values(1, "This is Post 1", "Home"),
(1, "This is Post 2", "Home"),
(1, "This is Post 3", "Home"),
(1, "This is Post 4", "Home"),
(1, "This is Post 5", "Home"),
(1, "This is Post 6", "Home"),
(1, "This is Post 7", "Home"),
(1, "This is Post 8", "Home"),
(1, "This is Post 9", "Home"),
(1, "This is Post 10", "Home"),
(2, "This is Post 1", "Home"),
(2, "This is Post 2", "Home"),
(2, "This is Post 3", "Home"),
(2, "This is Post 4", "Home"),
(2, "This is Post 5", "Home"),
(2, "This is Post 6", "Home"),
(2, "This is Post 7", "Home"),
(2, "This is Post 8", "Home"),
(2, "This is Post 9", "Home"),
(2, "This is Post 10", "Home"),
(3, "This is Post 1", "Home"),
(3, "This is Post 2", "Home"),
(3, "This is Post 3", "Home"),
(3, "This is Post 4", "Home"),
(3, "This is Post 5", "Home"),
(3, "This is Post 6", "Home"),
(3, "This is Post 7", "Home"),
(3, "This is Post 8", "Home"),
(3, "This is Post 9", "Home"),
(3, "This is Post 10", "Home"),
(4, "This is Post 1", "Home"),
(4, "This is Post 2", "Home"),
(4, "This is Post 3", "Home"),
(4, "This is Post 4", "Home"),
(4, "This is Post 5", "Home"),
(4, "This is Post 6", "Home"),
(4, "This is Post 7", "Home"),
(4, "This is Post 8", "Home"),
(4, "This is Post 9", "Home"),
(4, "This is Post 10", "Home"),
(5, "This is Post 1", "Home"),
(5, "This is Post 2", "Home"),
(5, "This is Post 3", "Home"),
(5, "This is Post 4", "Home"),
(5, "This is Post 5", "Home"),
(5, "This is Post 6", "Home"),
(5, "This is Post 7", "Home"),
(5, "This is Post 8", "Home"),
(5, "This is Post 9", "Home"),
(5, "This is Post 10", "Home"),
(6, "This is Post 1", "Home"),
(6, "This is Post 2", "Home"),
(6, "This is Post 3", "Home"),
(6, "This is Post 4", "Home"),
(6, "This is Post 5", "Home"),
(6, "This is Post 6", "Home"),
(6, "This is Post 7", "Home"),
(6, "This is Post 8", "Home"),
(6, "This is Post 9", "Home"),
(6, "This is Post 10", "Home"),
(7, "This is Post 1", "Home"),
(7, "This is Post 2", "Home"),
(7, "This is Post 3", "Home"),
(7, "This is Post 4", "Home"),
(7, "This is Post 5", "Home"),
(7, "This is Post 6", "Home"),
(7, "This is Post 7", "Home"),
(7, "This is Post 8", "Home"),
(7, "This is Post 9", "Home"),
(7, "This is Post 10", "Home"),
(8, "This is Post 1", "Home"),
(8, "This is Post 2", "Home"),
(8, "This is Post 3", "Home"),
(8, "This is Post 4", "Home"),
(8, "This is Post 5", "Home"),
(8, "This is Post 6", "Home"),
(8, "This is Post 7", "Home"),
(8, "This is Post 8", "Home"),
(8, "This is Post 9", "Home"),
(8, "This is Post 10", "Home"),
(9, "This is Post 1", "Home"),
(9, "This is Post 2", "Home"),
(9, "This is Post 3", "Home"),
(9, "This is Post 4", "Home"),
(9, "This is Post 5", "Home"),
(9, "This is Post 6", "Home"),
(9, "This is Post 7", "Home"),
(9, "This is Post 8", "Home"),
(9, "This is Post 9", "Home"),
(9, "This is Post 10", "Home"),
(10, "This is Post 1", "Home"),
(10, "This is Post 2", "Home"),
(10, "This is Post 3", "Home"),
(10, "This is Post 4", "Home"),
(10, "This is Post 5", "Home"),
(10, "This is Post 6", "Home"),
(10, "This is Post 7", "Home"),
(10, "This is Post 8", "Home"),
(10, "This is Post 9", "Home"),
(10, "This is Post 10", "Home");