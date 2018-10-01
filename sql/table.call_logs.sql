-- 
-- Editor SQL for DB table call_logs
-- Created by http://editor.datatables.net/generator
-- 

CREATE TABLE IF NOT EXISTS `call_logs` (
	`id` int(10) NOT NULL auto_increment,
	`time_of_call` datetime,
	`call_from` varchar(255),
	`call_to` varchar(255),
	`call_recording` varchar(255),
	`call_duration` numeric(9,2),
	`call_type` varchar(255),
	PRIMARY KEY( `id` )
);