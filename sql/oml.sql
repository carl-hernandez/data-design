-- UUIDs for keys

-- 4441294d90b1471d86bbea675f8a72fa
-- 8929aaeece8041e0a7d6662bf45cd961
-- 22c43a7b981443c4bd98002262e498d1
-- 5cebc358b9f340299cd84a25b9b11b52
-- 37480a7e31ac43b7a6ea364dc46a615b

--insert cards into card table
INSERT INTO card (cardId, cardName, cardPictureUrl, cardPrice) VALUES (UNHEX("4441294d90b1471d86bbea675f8a72fa"), "Forbidden Alchemy", "https://static.mtgstocks.com/cardimages/226758.jpg", 0.12);
INSERT INTO card (cardId, cardName, cardPictureUrl, cardPrice) VALUES (unhex("8929aaeece8041e0a7d6662bf45cd961"), "Black Lotus", "https://static.mtgstocks.com/cardimages/298.jpg", 4200.00);
INSERT INTO card (cardID, cardName, cardPictureUrl, cardPrice) VALUES (UNEHX("5cebc358b9f340299cd84a25b9b11b52"), "Blacker Lotus", "https://static.mtgstocks.com/cardimages/9764.jpg", 6.41);

--insert profile into profile table
INSERT INTO profile (profileId, profileEmail, profileHash) VALUES (UNHEX("22c43a7b981443c4bd98002262e498d1"), "timmy@bankrupt.com", "123abC.");


--update profile password
UPDATE profile SET profileHash = "L0ng3r_password!" where profileId = unhex("22c43a7b981443c4bd98002262e498d1");


--delete Black Lotus from card table
DELETE FROM card WHERE cardId = unhex ("8929aaeece8041e0a7d6662bf45cd961");

--insert card into watchlist
INSERT INTO watchList VALUES ( UNHEX("4441294d90b1471d86bbea675f8a72fa"), UNHEX("22c43a7b981443c4bd98002262e498d1"));

--select card from card table
SELECT cardId, cardName, cardPrice from card WHERE cardName cardId= unhex("5cebc358b9f340299cd84a25b9b11b52");

--innerjoin email onto watchlist
SELECT profile.profileEmail, watchList.watchlistProfileId FROM watchlist INNER JOIN profile on watchlist.watchlistProfileId = profile.profileId WHERE watchlistProfileId = unhex("22c43a7b981443c4bd98002262e498d1");

--count number of likes on DDC Tweet
--SELECT tweet.tweetId, like.likeTweetId FROM like INNERJOIN tweet on tweet.tweetId = like.likeTweetId WHERE unhex = ("37480a7e31ac43b7a6ea364dc46a615b");

