CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateCelebName`(IN celeb_id INT,INOUT newName varchar(255) )
BEGIN
	UPDATE celebs
	SET name= newName
	WHERE celeb_id=id;
	
    SELECT name INTO newName
    FROM celebs
    WHERE id=celeb_id;
END