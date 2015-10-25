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

INSERT INTO genres(genre) VALUES ('no genre'), ('fun'),('serious'),( 'sport'),( 'news');

INSERT INTO bookmarks(url, title, details, genre_id)  VALUES ('http://www.youtube.com', 'YouTube', 'Stream videos from the web', 1);
INSERT INTO bookmarks(url, title, details, genre_id)  VALUES ('http://www.bbc.co.uk/news', 'BBC News', 'BBC News front page', 5);
INSERT INTO bookmarks(url, title, details, genre_id)  VALUES ('http://www.google.co.uk', 'Google', 'The worlds most popular search engine', 3);
INSERT INTO bookmarks(url, title, details, genre_id)  VALUES ('http://www.badgerbadgerbadger.com', 'Badger Badger', 'Mushroom Mushroom', 2);
INSERT INTO bookmarks(url, title, details, genre_id)  VALUES ('http://www.livescore.com', 'LiveScore', 'Latest live football scores', 4);
INSERT INTO bookmarks(url, title, details, genre_id)  VALUES ('http://www.bbc.co.uk/sportscotland', 'Sport Scotland', 'Latest Scottish football news', 4);
INSERT INTO bookmarks(url, title, details, genre_id)  VALUES ('http://www.wrestlecrap.com', 'Wrestlecrap', 'The worst of wrestling', 4);
INSERT INTO bookmarks(url, title, details, genre_id)  VALUES ('http://www.yle.fi', 'YLE', 'News from Finland', 5);
INSERT INTO bookmarks(url, title, details, genre_id)  VALUES ('http://www.rbs.co.uk', 'RBS', 'Royal Bank of Scotland', 3);
INSERT INTO bookmarks(url, title, details, genre_id)  VALUES ('http://www.hibs.co.uk', 'Hibs', 'Hibernian FC Official Website', 4);
INSERT INTO bookmarks(url, title, details, genre_id)  VALUES ('http://www.tesco.co.uk', 'Tesco', 'Michaels Favourite Shop', 2);
INSERT INTO bookmarks(url, title, details, genre_id)  VALUES ('http://www.yahoo.co.uk', 'Yahoo UK', 'Search the Web', 3);