use vk;


-- Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке. [ORDER BY]

select distinct firstname
from users
order by firstname


-- Выведите количество мужчин старше 35 лет [COUNT].

select count(*)
from profiles
where gender = 'm'
	and timestampdiff (year, birthday, now()) >= 35


-- Сколько заявок в друзья в каждом статусе? (таблица friend_requests) [GROUP BY]

select
	status as 'статус',
	count(*) as 'число зявок'
from friend_requests
group by status
	
	
-- Выведите номер пользователя, который отправил больше всех заявок в друзья (таблица friend_requests) [LIMIT].
select
	count(*) as cnt,
	initiator_user_id as 'пользователь'
from friend_requests
group by initiator_user_id
order by cnt desc 
limit 1


-- Выведите названия и номера групп, имена которых состоят из 5 символов [LIKE]
select id, name 
from communities
where name like '_____'
order by id


