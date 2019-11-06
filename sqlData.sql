CREATE TABLE `topics` (
	`Id` INT(11) NOT NULL,
	`Name` TINYTEXT NOT NULL,
	`Description` TEXT NULL
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;

CREATE TABLE `subtopics` (
	`SubTopicId` INT(11) NOT NULL,
	`TopicId` INT(11) NOT NULL,
	`Name` TINYTEXT NOT NULL,
	`Description` TEXT NULL
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
;

CREATE TABLE `items` (
	`ItemId` INT(11) NOT NULL AUTO_INCREMENT,
	`SubTopicId` INT(11) NOT NULL,
	`Name` TINYTEXT NOT NULL,
	`Description` TEXT NULL,
	UNIQUE INDEX `ItemId` (`ItemId`)
)
COLLATE='utf8mb4_0900_ai_ci'
ENGINE=InnoDB
AUTO_INCREMENT=6
;


-- insert data
INSERT INTO `topics` (`Id`, `Name`, `Description`) VALUES
	(1, 'שונות', NULL),
	(2, 'קדושה', NULL),
	(3, 'רפואה', NULL),
	(4, 'ארועים', NULL),
	(5, 'תינוקות', NULL),
	(6, 'נשים ויולדות', NULL);
    
INSERT INTO `subtopics` (`SubTopicId`, `TopicId`, `Name`, `Description`) VALUES
	(1, 1, 'בגדים', ''),
	(2, 1, 'כסאות ספסלים ושולחנות', ''),
	(3, 1, 'במות', ''),
	(4, 1, 'מט"ח', ''),
	(5, 1, 'מנעולים', ''),
	(6, 1, 'כלי עבודה', ''),
	(7, 2, 'ספרי קדוש', ''),
	(8, 2, 'ספרים לברית יצחק', ''),
	(9, 2, 'שבת', ''),
	(10, 2, 'אבלות', ''),
	(11, 3, 'ברנשילד', ''),
	(12, 3, 'יעוץ רפואי', ''),
	(13, 3, 'מכשור רפואי', ''),
	(14, 3, 'תרופות', ''),
	(15, 4, 'מוצרי תינוקות', ''),
	(16, 4, 'טיטולים', ''),
	(17, 4, 'כסאות בטיחות', ''),
	(18, 4, 'מכשיר בייביסיטר', ''),
	(19, 4, 'חלב אם', ''),
	(20, 5, 'מיטות תינוק', ''),
	(21, 5, 'תומכת לידה', ''),
	(22, 5, 'טהרת המשפחה', ''),
	(23, 5, 'ברית/ה', ''),
	(24, 5, 'חלב', ''),
	(25, 6, 'כלות', ''),
	(26, 6, 'בר מצוה', ''),
	(28, 6, 'בת מצוה', ''),
	(29, 6, 'ברית', ''),
	(30, 6, 'אירוסין', '');

INSERT INTO `items` (`ItemId`, `SubTopicId`, `Name`, `Description`) VALUES
	(1, 1, 'חולצה', ''),
	(2, 1, 'מכנס', ''),
	(3, 2, 'כסא', ''),
	(4, 2, 'שולחן', ''),
	(5, 2, 'נדנדה', '');
