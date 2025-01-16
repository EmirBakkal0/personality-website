CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `celeb_info` AS
    SELECT 
        `celeb`.`name` AS `celebrity_name`,
        `category`.`category` AS `category_name`,
        `sub_category`.`subcategory` AS `subcategory_name`
    FROM
        ((`celeb`
        JOIN `category` ON ((`celeb`.`cat_id` = `category`.`category_id`)))
        JOIN `sub_category` ON ((`celeb`.`sub_cat_id` = `sub_category`.`sub_cat_id`)))