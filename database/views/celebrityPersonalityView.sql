CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `celeb_personality_view` AS
    SELECT 
        `c`.`name` AS `CelebName`,
        `l`.`four_letter` AS `PersonalityType`
    FROM
        (`celebs` `c`
        JOIN `letter` `l` ON ((`c`.`id` = `l`.`celebs_id`)))