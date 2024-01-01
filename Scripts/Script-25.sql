insert into genre(name)
values('Поп-музыка');
insert into genre(name)
values('Диско');
insert into genre(name)
values('Авторская песня');

insert into albumlist(name, year_of_manufacture)
values('Автопортрет', '1999-01-01');
insert into albumlist(name, year_of_manufacture)
values('Где ты, там я', '2019-01-01');
insert into albumlist(name, year_of_manufacture)
values('4', '2012-01-01');
insert into albumlist(name, year_of_manufacture)
values('Лето без интернета', '2020-01-01');

insert into castlist(name)
values('LOBODA');
insert into castlist(name)
values('Асия');
insert into castlist(name)
values('Ночные снайперы');
insert into castlist(name)
values('Ани Лорак');
insert into castlist(name)
values('Нюша');
insert into castlist(name)
values('Yuri Sosnin');
insert into castlist(name)
values('Высоцкий В.С.');
insert into castlist(name)
values('Мумий Троль');

insert into playlist(name, lenght)
values('Мой', '00:04:35');
insert into playlist(name, lenght)
values('Париж', '00:04:02');
insert into playlist(name, lenght)
values('Останься', '00:04:35');
insert into playlist(name, lenght)
values('Неторопливая любовь', '00:03:34');
insert into playlist(name, lenght, albumlist_id)
values('Государство', '00:04:05', 3);
insert into playlist(name, lenght)
values('Сон', '00:02:58');
insert into playlist(name, lenght, albumlist_id)
values('Тепло', '00:03:34', 2);
insert into playlist(name, lenght)
values('Song of the Stars', '00:06:33');
insert into playlist(name, lenght)
values('Favorite Disco', '00:05:12');
insert into playlist(name, lenght, albumlist_id)
values('Тот, который не стрелял', '00:02:41', 1);
insert into playlist(name, lenght, albumlist_id)
values('Я не люблю', '00:02:13', 1);
insert into playlist(name, lenght, albumlist_id)
values('Лето без интернета', '00:03:31', 4);

insert into collection(name, year_of_manufacture)
values('Русский Радио Хит', '2016-01-01');
insert into collection(name, year_of_manufacture)
values('Nю и Асия', '2019-01-01');
insert into collection(name, year_of_manufacture)
values('Летний русский рок', '2018-01-01');
insert into collection(name, year_of_manufacture)
values('Сборник Ани Лорак', '2020-01-01');
insert into collection(name, year_of_manufacture)
values('Созвездие 80-х', '2017-01-01');
insert into collection(name, year_of_manufacture)
values('100 Лучших песен Высоцкого', '2010-01-01');
insert into collection(name, year_of_manufacture)
values('Warner Music Russia Релиз', '2020-01-01');
