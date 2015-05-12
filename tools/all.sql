INSERT INTO `entities` (`name`, `browsable`) VALUES
('article', 1),
('author', 1),
('book', 1),
('conference', 1);

INSERT INTO `entities_category` (`name`, `shortname`) VALUES
('zavrsni', 'Zavrsni Entiteti');

INSERT INTO `join_entities_category_entities` (`category_name`, `entity_name`) VALUES
('zavrsni', 'article'),
('zavrsni', 'author'),
('zavrsni', 'book'),
('zavrsni', 'conference');

INSERT INTO `transforms` (`name`, `enable`) VALUES
('BookArticleToAuthor', 1),
('PhraseToArticlesGS', 1),
('PhraseToArticlesIEEE', 1),
('PhraseToBookArticleKoha', 1),
('PhraseToBookLOC', 1),
('PhraseToConferenceCA', 1),
('PhraseToSimilarPhrases', 1);

INSERT INTO `transforms_category` (`name`, `shortname`) VALUES
('zavrsni', 'Zavrsni transformacije');

INSERT INTO `join_transforms_category_transforms` (`category_name`, `transform_name`) VALUES
('zavrsni', 'BookArticleToAuthor'),
('zavrsni', 'PhraseToArticlesGS'),
('zavrsni', 'PhraseToArticlesIEEE'),
('zavrsni', 'PhraseToBookArticleKoha'),
('zavrsni', 'PhraseToBookLOC'),
('zavrsni', 'PhraseToConferenceCA'),
('zavrsni', 'PhraseToSimilarPhrases');

INSERT INTO `join_groups_transforms` (`groupname`, `transform_name`) VALUES
('community', 'BookArticleToAuthor'),
('community', 'PhraseToArticlesGS'),
('community', 'PhraseToArticlesIEEE'),
('community', 'PhraseToBookArticleKoha'),
('community', 'PhraseToBookLOC'),
('community', 'PhraseToConferenceCA'),
('community', 'PhraseToSimilarPhrases');
