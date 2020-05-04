ALTER DATABASE ddProject SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS {}
DROP TABLE IF EXISTS {}
DROP TABLE IF EXISTS {}

CREATE TABLE card(
    cardId BINARY(16) not null,
    cardName VARCHAR(150) not null,
    cardPictureUrl VARCHAR(150),
    cardPrice DECIMAL(6,2) not null,
    UNIQUE(cardName),
    PRIMARY KEY(cardId)
);

CREATE TABLE profile(
    profileId BINARY(16) not null,
    profileEmail VARCHAR(128) not null,
    profileHash CHAR(32),
    UNIQUE(profileEmail),
    PRIMARY KEY (profileId)
);

CREATE TABLE watchList(
    watchListCardId BINARY(16) not null,
    watchListProfileId BINARY(16) not null,
    INDEX (watchListCardId),
    INDEX (watchListProfileId),
    FOREIGN KEY(watchListCardId) REFERENCES card(cardId),
    FOREIGN KEY(watchListProfileId) REFERENCES profile(profileId),
    PRIMARY KEY(watchListCardId, watchListProfileId)
);