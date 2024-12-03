USE social;

INSERT INTO users
    (user_id, first_name, last_name, email)
VALUES
    (1, 'Chidi', 'Anagonye', 'chidi.anagonye@goodplace.com'),
    (2, 'Eleanor', 'Shellstrop', 'eleanor.shellstrop@goodplace.com'),
    (3, 'Tahani', 'Al-Jamil', 'tahani.aljamil@goodplace.com'),
    (4, 'Jason', 'Mendoza', 'jason.medoza@goodplace.com'),
    (5, 'Michael', 'Schur', 'michael.schur@goodplace.com');

INSERT INTO friends
    (user_id, friend_id)
VALUES
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 3),
    (2, 4),
    (3, 1),
    (3, 2),
    (3, 4),
    (4, 2),
    (4, 3),
    (4, 5),
    (5, 4);

INSERT INTO sessions
    (user_id, created_on, updated_on)
VALUES
    (1, DATE_SUB(NOW(), INTERVAL 3 HOUR), DATE_SUB(NOW(), INTERVAL 1 HOUR)),
    (2, DATE_SUB(NOW(), INTERVAL 1 HOUR), DATE_SUB(NOW(), INTERVAL 1 HOUR)),
    (3, DATE_SUB(NOW(), INTERVAL 3 HOUR), DATE_SUB(NOW(), INTERVAL 3 HOUR)),
    (4, DATE_SUB(NOW(), INTERVAL 12 HOUR), DATE_SUB(NOW(), INTERVAL 1 HOUR)),
    (5, DATE_SUB(NOW(), INTERVAL 12 HOUR), DATE_SUB(NOW(), INTERVAL 3 HOUR));

INSERT INTO posts
    (user_id, content)
VALUES
    (1, 'I am Chidi Anagonye, and I am a philosopher.'),
    (2, 'I am Eleanor Shellstrop, and I am a lawyer.'),
    (3, 'I am Tahani Al-Jamil, and I am a socialite.'),
    (4, 'I am Jason Mendoza, and I am a janitor.'),
    (5, 'I am Michael Schur, and I am a creator.');

INSERT INTO notifications
    (user_id, post_id)
VALUES
    (2, 6),
    (3, 6),
    (1, 7),
    (3, 7),
    (4, 7),
    (1, 8),
    (2, 8),
    (4, 8),
    (2, 9),
    (3, 9),
    (5, 9),
    (4, 10);