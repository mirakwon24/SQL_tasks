CREATE TABLE IF NOT EXISTS music_genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS singers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS singers_genre (
	music_genre_id INTEGER REFERENCES music_genre(id),
	singers_id INTEGER REFERENCES singers(id),
	CONSTRAINT pk_singers_id PRIMARY KEY (music_genre_id, singers_genre_id)
);


CREATE TABLE IF NOT EXISTS albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) unique NOT NULL,
	year_of INTEGER check(year of publication>2000)
);


CREATE TABLE IF NOT EXISTS singers_albums (
	albums_id INTEGER REFERENCES album(id),
	singers_id INTEGER REFERENCES singers(id),
	CONSTRAINT pk_albums_id PRIMARY KEY (albums_id, singers_id)
);


CREATE TABLE IF NOT EXISTS tracks (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	duration INTEGER,
	albums_id INTEGER REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) unique NOT NULL,
	year_of INTEGER check(collection_year>1900),);

CREATE TABLE IF NOT EXISTS tracks_collection (
	tracks_id INTEGER REFERENCES tracks_collection(id),
	collection_id INTEGER REFERENCES collection(id),
	CONSTRAINT pk_SongCollection PRIMARY KEY (tracks_id, collection_id)
);
