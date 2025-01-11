CREATE PROCEDURE `AddCeleb` (IN cel_id INT, IN cel_name TEXT, IN cel_cat_id INT, IN cel_sub_cat_id INT )
BEGIN
INSERT INTO celebs values( cel_id,cel_name,cel_cat_id,cel_sub_cat_id);

END