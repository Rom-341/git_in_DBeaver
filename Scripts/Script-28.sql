--2.1

select name, lenght from playlist
order by lenght desc
limit 1;

--2.2

select name, lenght from playlist
where lenght >= '00:03:30';

--2.3

select name, year_of_manufacture from collection
where year_of_manufacture between '2018-01-01' and '2020-12-31';

--2.4

select name from castlist
where not name like '% %';

--2.5

select name from playlist
where name like '%Мой%';

--3.1

select g.name, count(c.name)
from genre as g
left join castlist_genre as cg on g.genre_id = cg.genre_id
left join castlist as c on cg.castlist_id = c.castlist_id
group by g.name
order by count(c.castlist_id) desc;

--3.2

select p.name, a.year_of_manufacture
from albumlist as a
left join playlist as p on p.albumlist_id = a.albumlist_id
where (a.year_of_manufacture >= '2019-01-01') and (a.year_of_manufacture <= '2020-12-31')
group by p.name, a.year_of_manufacture
order by count(p.albumlist_id);

--3.3

select a.name, AVG(p.lenght)
from albumlist as a
left join playlist as p on p.albumlist_id = a.albumlist_id
group by a.name
order by AVG(p.lenght);

--3.4

select distinct c.name
from castlist as c
where c.name not in (
    select distinct c.name
    from castlist as c
    left join albumlist_castlist as ac on c.castlist_id = ac.castlist_id
    left join albumlist as a on a.albumlist_id = ac.albumlist_id
    where (a.year_of_manufacture >= '2020-01-01') and (a.year_of_manufacture <= '2020-12-31')
)
order by c.name;

--3.5

select distinct c.name
from collection as c
left join playlist_collection as pc on c.collection_id = pc.collection_id
left join playlist as p on p.playlist_id = pc.playlist_id
left join albumlist as a on a.albumlist_id = p.albumlist_id
left join albumlist_castlist as ac on ac.albumlist_id = a.albumlist_id
left join castlist as c_ on c_.castlist_id = ac.castlist_id
where c_.name like '%%Высоцкий%%'
order by c.name;

