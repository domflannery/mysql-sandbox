create database if not exists learning_mysql;

USE `learning_mysql`;
DROP procedure IF EXISTS `gendata`;

DELIMITER $$
USE `Test`$$
CREATE DEFINER=`root`@`10.11.1.1` PROCEDURE `gendata`(in loopLimit int)
begin
	declare c int;
    set c = 0;
    
    label: LOOP
		insert into tbl (fld)
        values (FLOOR(1 + (RAND() * 60000)));
        set c = c + 1;
        if c > loopLimit then
			leave label;
        end if;
    end LOOP label;
end$$

DELIMITER ;