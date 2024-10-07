create table ECB (
ECB_Id int primary key auto_increment,
coach_id int,
jersey_id int,
women_jersey_id int,
league_id int,
fixture_id int,
venue_id int,
index (coach_id),
constraint fk_coaches foreign key (coach_id) references coaches(coach_id),
index (jersey_id),
constraint fk_england_mens_team foreign key (jersey_id) references England_men_team(jersey_id),
index (women_jersey_id),
constraint fk_england_womens_team foreign key (women_jersey_id) references england_women_team(women_jersey_id),
index (league_id),
constraint fk_domestic_team foreign key (league_id) references domestic_team(league_id),
index (fixture_id),
constraint fk_fixtures foreign key (fixture_id) references fixtures(fixture_id),
index (venue_id),
constraint fk_venue foreign key (venue_id) references venue(venue_id)

);






create table coaches(
coach_id int primary key,
coach_name varchar(20),
salary int,
contract_in_years int(10),
post varchar(20),
career_id int,
index(career_id),
constraint fk_career foreign key (career_id) references coach_career(career_id)
);

create table england_men_team(
jersey_id int primary key,
player_name varchar(20),
salary_in_years float,
contract_in_years int(10),
career_id int,
index(career_id),
constraint fk_player_career foreign key (career_id) references player_career(career_id)
);

create table england_women_team(
women_jersey_id int primary key,
player_name varchar(20),
salary int,
contract_in_years int(10),
career_id int,
index(career_id),
constraint fk_women_career foreign key (career_id) references women_career(career_id)
);

create table domestic_team(
league_id int primary key,
leagues_list varchar(20),
no_of_teams int,
team_id int,
index(team_id),
constraint fk_team foreign key (team_id) references teams(team_id)
);

create table teams(
team_id int primary key,
team_names varchar(20),
captain varchar(20),
player_id int,
index(player_id),
constraint fk_player foreign key (player_id) references player(player_id)
);

create table player(
player_id int primary key,
player_name varchar(20),
batting_style varchar(20),
bowling_style varchar(20),
roles varchar(20)
);

create table coach_career(
career_id int primary key,
t20i_deput_date date,
t20i_deput_against varchar(20),
odi_deput_date date,
odi_deput_against varchar(20),
test_deput_date date,
test_deput_against varchar(20),
roles varchar(20)
);


create table player_career(
career_id int primary key,
roles varchar(20),
batting_style varchar(20),
bowling_style varchar(20),
t20i_deput_date date,
t20i_deput_against varchar(20),
odi_deput_date date,
odi_deput_against varchar(20),
test_deput_date date,
test_deput_against varchar(20),
speciality varchar(30)
);


create table women_career(
career_id int primary key,
roles varchar(20),
batting_style varchar(20),
bowling_style varchar(20)
);

create table fixtures(
fixture_id int primary key,
match_against varchar(20),
match_format varchar(20),
venue_id int,
index(venue_id),
constraint fk_venues foreign key (venue_id) references venue(venue_id)
);

create table venue(
venue_id int primary key,
stadium_name varchar(20),
place varchar(20)

);

insert into venue values (1,"Lords","london"),
(2,"Kennington oval","london"),
(3,"Old Trafford","Manchester"),
(4,"Edgbaston","Brimingham"),
(5,"Trent bridge","Nottingham"),
(6,"Headingly","leeds"),
(7,"County Ground","Bristol"),
(8,"Sophia Gaardens","Cardiff"),
(9,"The Rose Bowl","Southampton"),
(10,"County ground","Chelmsford");

select*from fixtures;

insert into fixtures values (1,"australia","T20I",1),
(2,"Australia","T20I",2),
(3,"Australia","T20I",3),
(4,"Australia","Odi",1),
(5,"Australia","Odi",2),
(6,"Australia","Odi",6),
(7,"Australia","Odi",5),
(8,"Australia","Odi",8),
(9,"Australia","Test",7),
(10,"Australia","Test",3),
(11,"Australia","Test",1),
(12,"Australia","Test",4);

select*from women_career;

insert into women_career values ( 78, "Batsman","Right-Hand-Bat","Right-Arm-Off-Break"),
(23,"Batsman","Right-HandBat","Right-Hand-Medium"),
(25,"Batsman","Right-HandBat","Right-Off-Break"),
(21,"Batting Allrounder","Right-HandBat","Right-Off-Break"),
(54,"Batting Allrounder","Right-HandBat","Right-Arm-Legbreak"),     
(56,"bowling Allrounder","Right-HandBat","Right-Hand-Medium"),
(14,"WK-Batsman","Right-Hand-Bat",null),
(10,"Bowler","Right-Hand-Bat","Right-Arm-Medium"),
(12,"Bowler","Right-Hand-Bat","Right-Arm-Offbreak"),
(1,"Bowler","Right-Hand-Bat","Left-Arm-Orthodox");

select *from player_career

insert into player_career values(155,"Batting-Allrounder","Left-Hand-Bat","Right-Arm-Medium",'2011-09-23',"West Indies",'2011-08-25',"Ireland",'2013-12-05',"Australia","Clutch Player"),
(163,"WK-Batsman","Right-Hand-Bat",null,'2011-08-31',"India",'2012-02-21',"pakistan",'2014-07-27',"India","Dangerous Opener"),
(122,"Bowler","Right-Hand-Bat","Right-Arm-Fast",'2019-05-05',"Pakistan",'2019-05-03',"Ireland",'2019-08-14',"Australia","Deadly bouncers "),
(151,"WK-Batsman","Right-Hand-Bat","Right-Arm-Medium",'2011-09-23',"West Indies",'2011-09-16',"India",'2012-05-17',"West Indies","Dangerous Opener"),
(166,"Batting-Allrounder","Right-Hand-Bat","Right-Arm-Offbreak",'2012-12-22',"India",'2013-01-11',"India",'2012-12-13',"India","3 Format Player"),
(158,"Bowling-Allrounder","Left-Hand-Bat","Left-Arm-Medium",'2019-11-01',"Newzeland",'2018-06-24',"Australia",'2018-06-01',"Pakistan","slower ones"),
(119,"Batting-Allrounder","Right-Hand-Bat","Right-Arm-Medium",'2011-01-12',"Australia",'2011-01-23',"Australia",'2013-08-21',"Australia","Swinging the ball"),
(118,"Batting-Allrounder","Left-Hand-Bat","Right-Arm-Offbreak",'2014-03-11',"West Indies",'2014-02-28',"West Indies",'2014-06-12',"Srilanka","Stability"),
(195,"Bowler","Right-Hand-Bat","Right-Arm-Legbreak",'2009-06-05',"Nedherland",'2009-08-27',"Ireland",'2015-10-13',"Pakistan","Wicket Taker"),
(133,"Bowler","Right-Hand-Bat","Right-Arm-Fast",'2015-06-23',"Newzeland",'2015-05-08',"Ireland",'2015-05-21',"Newzeland","Deadly bouncer"),
(188,"Batsman","Right-Hand-Bat","Right-Arm-Medium",'2022-01-26',"West Indies",'2023-01-27',"South Africa",'2022-09-08',"South Africa","3 Format player"),
(132,"WK-Batsman","Right-Hand-Bat",null,null,null,null,null,'2018-08-09',"India","Defensive player"),
(120,"Batsman","Right-Hand-Bat",null,'2014-09-07',"India",'2015-05-08',"Ireland",'2019-07-24',"Ireland","Dangerous Opener"),
(161,"WK-Batsman","Right-Hand-Bat","Right-Arm-Offbreak",'2022-01-26',"West Indies",'2021-07-08',"Pakistan",null,null,"Dangerous Opener"),
(138,"Bowler","Right-Hand-Bat","Left-Arm-Medium",'2015-08-31',"Australia",'2015-09-13',"Australia",null,null,"swinging in powerplay"),
(117,"Batsman","Left-Hand-Bat","Right-Arm-Offbreak",'2019-05-05',"Pakistan",'2016-10-07',"Bangladesh",'2016-10-20',"Bangladesh","Classic Opener");


select*from england_men_team;

insert into england_men_team values(55,"Ben Stokes",3.36,1,155),
(63,"Jos Buttler",2.60,2,163),
(22,"Jofra Archer",2.56,2,122),
(51,"Johnny Bairstow",1.88,2,151),
(66,"Joe Root",1.81,3,166),
(58,"Sam Curran",1.75,2,158),
(19,"Chris Woakes",1.60,2,119),
(18,"Moeen Ali",1.58,2,118),
(95,"Adil Rashid",1.55,2,195),
(33,"Mark Wood",1.51,3,133),
(88,"Harry Brook",1.45,2,188),
(32,"Ollie Pope",1.4,2,132),
(20,"JasonRoy",1.31,1,120),
(61,"Philip Salt",1.11,2,161),
(38,"Reece Topley",1.08,2,138),
(17,"Ben Ducket",1.01,2,117);

select*from coach_career;

insert into coach_career values (1,'2005-02-17',"Australia",'2002-01-17',"Australia",'2004-03-10',"South Africa","Batsman"),
(2,'2005-06-13',"Australia",'2001-06-07',"Pakistan",'2003-12-02',"Srilanka","Batsman"),
(3,'2005-06-13',"Australia",'1999-04-07',"Pakistan",'1998-07-23',"South Africa","Batting Allrounder"),
(4,'2005-06-13',"Australia",'2000-07-08',"Zimbabwe",'2000-08-03',"West Indies","Batsman"),
(5,'2005-10-21',"South Africa",'2005-08-31',"Zimbabwe",'2006-04-27',"South Africa","Bowler"),
(6,null,null,null,null,null,null,"Bowler");

select*from coaches;

insert into coaches values(111,"Brendon Muccullam",3000000,4,"Head Coach",1),
(222,"Paul Collingwood",2000000,2,"Assistant Coach",2),
(333,"Andrew Flintoff",2000000,3,"Assistant Coach",3),
(444,"Marcus Trescothick",1800000,2,"Batting Coach",4),
(555,"Jeetan Patel",1500000,1,"Spin Bowling Coach",5),
(666,"Neil Killen",1500000,2,"Pace Bowling Coach",6);




insert into england_women_team values( 07,"Alice Capsey",1500000,2,78),                   
(02,"Maia Boucher",1300000,3,23),
(32,"Danielle Wyatt",1350000,2,25),
(12,"Heather Knight",2000000,4,21),
(45,"Sophie Dunkley",1500000,2,54),
(65,"Danielle Gibson",1300000,2,56),
(41,"Amy Jones",1800000,3,14),       
(1,"Lauren Bell",2000000,2,10),
(21,"Charlotte Dean",1600000,2,12),
(11,"Sophie Ecclestone",2100000,3,1);



use ecb_management;


alter table domestic_team
add column tournament_format varchar(20);

select*from domestic_team;


alter table domestic_team
change column leagues_list  League_Name varchar(255);




insert into domestic_team values(101,"County Championship Division One 2024",10,"Test"),
(102,"County Championship Division Two 2024",10,"Test"),
(103,"England Domestic One-Day Cup 2024",18,"ODI"),
(104,"T20 Blast 2024",10,"T20");


alter table ecb
add column Date_ecb date;

insert into ecb values(1,111,null,null,null,null,null,'2024-09-12'),
(2,222,null,null,null,null,null,'2024-06-02'),
(3,333,null,null,null,null,null,'2024-03-12'),
(4,444,null,null,null,null,null,'2024-11-21'),
(5,555,null,null,null,null,null,'2024-08-22'),
(6,666,null,null,null,null,null,'2024-07-30');


select*from ecb;

insert into ecb values(8,111,null,null,101,null,3,'2024-10-14'),
(9,111,null,null,103,null,6,'2024-10-16'),
(10,111,null,null,102,null,7,'2024-10-18'),
(11,111,null,null,103,null,1,'2024-10-20'),
(12,111,null,null,104,null,3,'2024-10-12'),
(13,111,null,null,102,null,6,'2024-10-14');



insert into ecb values(14,111,null,null,null,1,3,'2024-11-14'),
(15,111,null,null,null,2,6,'2024-11-16'),
(16,111,null,null,null,3,7,'2024-11-18'),
(17,111,null,null,null,4,1,'2024-11-20'),
(18,111,null,null,null,5,3,'2024-11-22'),
(19,111,null,null,null,6,6,'2024-11-26');





select*from coach_career;
select*from coaches;
select*from england_men_team;
select*from england_women_team;
select*from fixtures;
select*from player_career;
select*from venue;
select*from women_career;
select*from domestic_team;
select*from ecb;




/*join the coach and coach career*/

select* from coaches
inner join coach_career on coaches.career_id = coach_career.career_id;


/*left join the coach and coach career*/

select distinct * from coaches
left join coach_career on coaches.career_id = coach_career.career_id;




/*right join the coach and coach career*/

select distinct * from coaches
right join coach_career on coaches.career_id = coach_career.career_id;




delimiter $$
create procedure T20_Player(in country varchar(255))

begin


select player_name,roles,batting_style,bowling_style,t20i_deput_against,speciality from player_career
inner join england_men_team on player_career.career_id=england_men_team.career_id
where t20i_deput_against = (select distinct t20i_deput_against from player_career where t20i_deput_against like country);

end $$

delimiter ;