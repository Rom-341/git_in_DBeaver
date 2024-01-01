CREATE TABLE IF NOT EXISTS genre(
genre_id SERIAL PRIMARY KEY,
name varchar(60)
);

CREATE TABLE IF NOT EXISTS castlist(
castlist_id SERIAL PRIMARY KEY,
name varchar(60)
);

CREATE TABLE IF NOT EXISTS castlist_genre(
genre_id integer REFERENCES genre(genre_id),
castlist_id integer REFERENCES castlist(castlist_id),
CONSTRAINT pk PRIMARY KEY (genre_id, castlist_id)
);

CREATE TABLE IF NOT EXISTS albumlist(
albumlist_id SERIAL PRIMARY KEY,
name varchar(60) NOT NULL,
year_of_manufacture date NOT NULL
);

CREATE TABLE IF NOT EXISTS albumlist_castlist(
albumlist_id integer REFERENCES albumlist(albumlist_id),
castlist_id integer REFERENCES castlist(castlist_id),
CONSTRAINT pkey PRIMARY KEY (albumlist_id, castlist_id)
);

CREATE TABLE IF NOT EXISTS playlist(
playlist_id SERIAL PRIMARY KEY,
name varchar(60) NOT NULL,
lenght interval minute to second NOT NULL,
albumlist_id integer,
FOREIGN KEY (albumlist_id) REFERENCES albumlist(albumlist_id) 
);

CREATE TABLE IF NOT EXISTS collection(
collection_id SERIAL PRIMARY KEY,
name varchar(60) NOT NULL,
year_of_manufacture date NOT NULL
);

CREATE TABLE IF NOT EXISTS playlist_collection(
playlist_id integer REFERENCES playlist (playlist_id),
collection_id integer REFERENCES collection (collection_id),
CONSTRAINT prk PRIMARY KEY (playlist_id, collection_id)
);