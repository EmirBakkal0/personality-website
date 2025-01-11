CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCelebPersonalityByName`(IN name TEXT, OUT letters VARCHAR(4))
BEGIN 
    SELECT l.four_letter INTO letters
    FROM celebs c
    JOIN letter l ON c.id = l.celebs_id 
    WHERE c.name= name; 
END