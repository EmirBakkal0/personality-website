CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCelebDetailsById`(IN c_id INT)
BEGIN
SELECT c_id,c.name, cs.category , sc.subcategory
FROM celebs c 
join categories cs on c.categories_cat_id = cs.cat_id
join sub_categories sc on c.sub_categories_sub_cat_id = sc.sub_cat_id
WHERE c.id= c_id;
END