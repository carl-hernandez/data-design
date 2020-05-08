-- UUIDs for keys

-- 4441294d90b1471d86bbea675f8a72fa
-- 8929aaeece8041e0a7d6662bf45cd961
-- 22c43a7b981443c4bd98002262e498d1
-- 5cebc358b9f340299cd84a25b9b11b52
-- 37480a7e31ac43b7a6ea364dc46a615b

INSERT INTO card (cardId, cardName, cardPictureUrl, cardPrice) VALUES (UNHEX("4441294d90b1471d86bbea675f8a72fa"), "Forbidden Alchemy", "https://static.mtgstocks.com/cardimages/226758.jpg", 0.12);
INSERT INTO card (cardId, cardName, cardPictureUrl, cardPrice) VALUES (unhex("8929aaeece8041e0a7d6662bf45cd961"), "Black Lotus", "https://static.mtgstocks.com/cardimages/298.jpg", 4200.00);
INSERT INTO profile (profileId, profileEmail, profileHash) VALUES (unhex("22c43a7b981443c4bd98002262e498d1"), "timmy@bankrupt.com", "123abC.");

UPDATE profile SET profileHash = "L0ng3r_password!" where profileId = unhex("22c43a7b981443c4bd98002262e498d1");

DELETE FROM card WHERE cardId = unhex ("8929aaeece8041e0a7d6662bf45cd961");

INSERT INTO watchList VALUES ( UNHEX("4441294d90b1471d86bbea675f8a72fa"), UNHEX("22c43a7b981443c4bd98002262e498d1"));