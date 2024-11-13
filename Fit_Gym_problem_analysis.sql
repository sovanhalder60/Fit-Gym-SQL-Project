create database fitgym_db;
use fitgym_db;

CREATE TABLE members (
    member_id INT PRIMARY KEY AUTO_INCREMENT,
    member_name VARCHAR(55) NOT NULL
);

INSERT INTO members (member_name) VALUES
('John Doe'), ('Jane Smith'), ('Sam Brown'), ('Alice Johnson'), ('Bob Lee'), 
('Chris Evans'), ('Diana Prince'), ('Eve Adams'), ('Frank Miller'), ('Grace Hopper'),
('Henry Ford'), ('Isabella Garcia'), ('Jack Sparrow'), ('Lily Allen'), ('Michael Scott'), 
('Nancy Drew'), ('Olivia Benson'), ('Paul Newman'), ('Quincy Adams'), ('Rachel Green'),
('Steve Rogers'), ('Tony Stark'), ('Uma Thurman'), ('Violet Baudelaire'), ('Walter White'),
('Xander Cage'), ('Yvonne Strahovski'), ('Zack Morris'), ('Andy Dufresne'), ('Beth Harmon');

select * from members;

CREATE TABLE membership (
    member_id INT,
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    membership_type VARCHAR(20),
    join_date DATE,
    status ENUM('Active', 'Inactive'),
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

INSERT INTO membership (member_id, age, gender, membership_type, join_date, status) VALUES
(1, 25, 'Male', 'Monthly', '2024-01-15', 'Active'),
(2, 30, 'Female', 'Annual', '2024-01-18', 'Active'),
(3, 28, 'Male', 'Quarterly', '2024-02-01', 'Inactive'),
(4, 22, 'Female', 'Monthly', '2024-03-01', 'Active'),
(5, 35, 'Male', 'Annual', '2024-01-10', 'Active'),
(6, 27, 'Male', 'Quarterly', '2024-01-20', 'Inactive'),
(7, 32, 'Female', 'Monthly', '2024-02-15', 'Active'),
(8, 45, 'Male', 'Annual', '2024-02-01', 'Active'),
(9, 29, 'Female', 'Monthly', '2024-02-20', 'Inactive'),
(10, 33, 'Male', 'Quarterly', '2024-01-25', 'Active'),
(11, 40, 'Female', 'Annual', '2024-02-12', 'Active'),
(12, 26, 'Male', 'Monthly', '2024-02-28', 'Active'),
(13, 38, 'Female', 'Quarterly', '2024-01-17', 'Inactive'),
(14, 24, 'Male', 'Monthly', '2024-01-20', 'Active'),
(15, 29, 'Female', 'Annual', '2024-02-22', 'Active'),
(16, 35, 'Male', 'Quarterly', '2024-02-18', 'Active'),
(17, 33, 'Female', 'Monthly', '2024-02-11', 'Active'),
(18, 26, 'Male', 'Annual', '2024-01-23', 'Inactive'),
(19, 27, 'Female', 'Quarterly', '2024-03-02', 'Active'),
(20, 31, 'Male', 'Monthly', '2024-03-05', 'Inactive'),
(21, 36, 'Female', 'Annual', '2024-03-10', 'Active'),
(22, 34, 'Male', 'Quarterly', '2024-03-12', 'Inactive'),
(23, 28, 'Female', 'Monthly', '2024-03-15', 'Active'),
(24, 25, 'Male', 'Annual', '2024-03-18', 'Active'),
(25, 39, 'Female', 'Quarterly', '2024-03-20', 'Inactive'),
(26, 29, 'Male', 'Monthly', '2024-03-22', 'Active'),
(27, 41, 'Female', 'Annual', '2024-03-24', 'Active'),
(28, 26, 'Male', 'Quarterly', '2024-03-26', 'Inactive'),
(29, 33, 'Female', 'Monthly', '2024-03-28', 'Active'),
(30, 30, 'Male', 'Annual', '2024-03-30', 'Active');


CREATE TABLE visits (
    visit_id INT PRIMARY KEY AUTO_INCREMENT,
    member_id INT,
    visit_date DATE,
    checkin_time TIME,
    checkout_time TIME,
    FOREIGN KEY (member_id) REFERENCES members(member_id)
);

INSERT INTO visits (member_id, visit_date, checkin_time, checkout_time) VALUES
(1, '2024-02-20', '09:00:00', '10:30:00'),
(2, '2024-02-20', '10:00:00', '11:00:00'),
(1, '2024-02-21', '09:15:00', '10:45:00'),
(3, '2024-02-21', '14:00:00', '15:30:00'),
(4, '2024-03-02', '08:30:00', '09:45:00'),
(5, '2024-03-03', '09:00:00', '10:30:00'),
(6, '2024-02-18', '10:15:00', '11:30:00'),
(7, '2024-02-19', '08:45:00', '10:00:00'),
(8, '2024-02-19', '11:00:00', '12:15:00'),
(9, '2024-02-20', '07:00:00', '08:15:00'),
(10, '2024-02-21', '09:30:00', '11:00:00'),
(11, '2024-02-21', '06:45:00', '08:00:00'),
(12, '2024-02-22', '07:30:00', '08:45:00'),
(13, '2024-02-22', '09:00:00', '10:30:00'),
(14, '2024-02-23', '08:00:00', '09:15:00'),
(15, '2024-02-23', '10:00:00', '11:15:00'),
(16, '2024-02-24', '11:00:00', '12:30:00'),
(17, '2024-02-25', '07:45:00', '09:15:00'),
(18, '2024-02-25', '10:15:00', '11:45:00'),
(19, '2024-02-26', '09:30:00', '10:45:00'),
(20, '2024-02-26', '08:00:00', '09:30:00'),
(21, '2024-02-27', '06:30:00', '08:00:00'),
(22, '2024-02-27', '12:00:00', '13:15:00'),
(23, '2024-02-28', '09:45:00', '11:00:00'),
(24, '2024-02-28', '10:00:00', '11:30:00'),
(25, '2024-03-01', '07:00:00', '08:15:00'),
(26, '2024-03-01', '09:00:00', '10:30:00'),
(27, '2024-03-02', '08:45:00', '10:00:00'),
(28, '2024-03-03', '11:00:00', '12:15:00'),
(29, '2024-03-04', '07:15:00', '08:45:00'),
(30, '2024-03-04', '10:30:00', '12:00:00'),
(1, '2024-03-05', '06:00:00', '07:30:00'),
(2, '2024-03-06', '08:00:00', '09:30:00'),
(3, '2024-03-07', '07:30:00', '08:45:00'),
(4, '2024-03-07', '09:00:00', '10:00:00'),
(5, '2024-03-08', '07:15:00', '08:30:00'),
(6, '2024-03-08', '09:30:00', '11:00:00'),
(7, '2024-03-09', '06:45:00', '08:00:00'),
(8, '2024-03-09', '10:00:00', '11:30:00');

select * from visits;
select * from membership;

-- 1.Retrieve the name and membership_type of female members.

select a.member_id,m.member_name,a.membership_type
from
(select member_id,membership_type,gender
from membership
where gender='Female')as a
inner join members as m
on a.member_id=m.member_id; 

-- 2.Find members who have a Monthly membership and joined after 2023-12-01.

select member_id,membership_type,join_date
from membership
where membership_type='monthly'and join_date>'2023-12-01';

-- 3.List the name and status of active members over 25.

select a.member_id,m.member_name,a.age,a.status
from
(select member_id,age,status
from membership
where status='active' and age>25)as a
inner join members m
on a.member_id=m.member_id; 

-- 4.Get details of visits on a specific date (2024-03-02).
select *
from visits
where visit_date='2024-03-02';

-- 5.List members with a Quarterly membership aged between 20 and 30.

select * 
from membership
where membership_type='quarterly'and age between 20 and 30;

-- 6.Count total visits made by each member.

select member_id,count(visit_id)as total_visit_number
from visits
group by member_id; 

-- 7.Count members by membership type (e.g., Monthly, Annual, Quarterly).

select membership_type,count(member_id)as total_members
from membership
group by membership_type ;

-- 8.Calculate the average age of members, grouped by membership type.

select membership_type,round(avg(age),0)as avg_age
from membership
group by membership_type;

-- 9.Total visits for each visit date.

select visit_date,count(visit_id)as total_visit 
from visits
group by visit_date;

-- 10.Count members by status (e.g., Active or Inactive).

select status,count(member_id)as count_members
from membership
group by status;

-- 11. Top 3 members with the highest visits.

select member_id,count(visit_id)as total_visit 
from visits
group by member_id
order by count(visit_id) desc 
limit 3;

-- 12. Active Monthly members grouped by membership type, sorted by recent join dates.

select *,
row_number()over(partition by a.membership_type order by join_date desc)as rank_
from
(select *
from membership
where status='active')as a;

-- 13. Members with more than 2 visits, sorted by total visits, displaying the top 5.

select member_id,count(visit_id) as total_visit
from visits
group by member_id
having count(visit_id)>2;

-- 14. Average age of active members, grouped by membership type, limited to the top 3 results. 

select a.membership_type,avg(age)as avg_age
from
(select *
from membership
having status='active')as a
group by a.membership_type;