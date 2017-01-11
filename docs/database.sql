-- création de la table utilisateur avec un ID, une adresse mail et un login uniques; un nom, un prénom et un mot de passe obligatoires
create table user(
	IDUser serial primary key,
	lastName varchar(50) not null,
	firstName varchar(50) not null,
	birthDay date,
	birthPlace varchar(100),
	email varchar(100) not null unique,
	address varchar(200),
	phoneNumber integer,
	login varchar(100) not null unique,
	password varchar(100) not null,
	profilPhoto varchar(200)
);

-- création de la table publication avec un ID, un titre obligatoire et un le nombre de like à 0
create table publication(
	IDPublication serial primary key,
	titlePublication varchar(20) not null,
	content varchar(200),
	likesNumber integer default 0,
	IDAuthor integer references user(IDUser)
		on update cascade
		on delete restrict
);

-- création de la table évènement avec un ID et un titre obligatoire
create table event(
	IDEvent serial primary key,
	titleEvent varchar(20) not null,
	description varchar(200),
	place varchar(200),
	date date,
	IDCreator integer references user(IDUser)
		on update cascade
		on delete restrict
);

-- création de la table groupe avec un ID et un titre obligatoire
create table group(
	IDGroup serial primary key,
	titleGroup varchar(20) not null,
	IDCreator integer references user(IDUser)
		on update cascade
		on delete restrict
);

-- création de la table d'appartenance à un groupe pour un utilisateur avec l'ID du groupe et de l'utilisateur
create table belongToGroup(
	IDGroup integer references group(IDGroup)
		on update cascade
		on delete restrict,
	IDUser integer references user(IDUser)
		on update cascade
		on delete restrict,
	constraint PKBelongToGroup primary key (IDGroup, IDUser)
		on update cascade
		on delete restrict
);

-- création de la table de participation à un évènement pour un utilisateur avec l'ID de l'évènement et de l'utilisateur
create table participateToEvent(
	IDEvent integer references event(IDEvent)
		on update cascade
		on delete restrict,
	IDUser integer references user(IDUser)
		on update cascade
		on delete restrict,
	constraint PKParticipateToEvent primary key (IDEvent, IDUser)
		on update cascade
		on delete restrict
);

-- création de la table de relation entre deux utilisateurs avec leurs IDs
create table friendWith(
	IDUser1 integer references user(IDUser)
		on update cascade
		on delete restrict,
	IDUser2 integer references user(IDUser)
		on update cascade
		on delete restrict,
	constraint PKFriendWith primary key (IDUser1, IDUser2)
		on update cascade
		on delete restrict
);

-- création de la table des rôles : 
-- 1 : admin
-- 2 : user
-- 3 : useless

create table role(
	IDUser integer references user(IDUser)
		on update cascade
		on delete restrict,
	role integer not null
);