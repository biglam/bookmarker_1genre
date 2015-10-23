DROP TABLE bookmarks;
DROP TABLE genres;

CREATE TABLE bookmarks (
  id serial8 primary key,
  url varchar(255),
  title varchar(255),
  details text,
  genre_id serial8,
  genre varchar(255)
);

CREATE TABLE genres (
  id serial8 primary key,
  genre varchar(255)
);

-- inserts sample data

INSERT INTO genres(genre) VALUES ('fun'),('serious'),( 'sport'),( 'news');

INSERT INTO bookmarks(url, title, details, genre_id)  VALUES ('http://www.youtube.com', 'YouTube', 'Stream videos from the web', 1);
INSERT INTO bookmarks(url, title, details, genre_id)  VALUES ('http://www.bbc.co.uk/news', 'BBC News', 'BBC News front page', 4);
INSERT INTO bookmarks(url, title, details, genre_id)  VALUES ('http://www.google.co.uk', 'Google', 'The worlds most popular search engine', 2);
INSERT INTO bookmarks(url, title, details, genre_id)  VALUES ('http://www.badgerbadgerbadger.com', 'Badger Badger', 'Mushroom Mushroom', 1);
INSERT INTO bookmarks(url, title, details, genre_id)  VALUES ('http://www.livescore.com', 'LiveScore', 'Latest live football scores', 3);