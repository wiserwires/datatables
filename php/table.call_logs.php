<?php

/*
 * Editor server script for DB table call_logs
 * Created by http://editor.datatables.net/generator
 */

// DataTables PHP library and database connection
include( "lib/DataTables.php" );

// Alias Editor classes so they are easy to use
use
	DataTables\Editor,
	DataTables\Editor\Field,
	DataTables\Editor\Format,
	DataTables\Editor\Mjoin,
	DataTables\Editor\Options,
	DataTables\Editor\Upload,
	DataTables\Editor\Validate,
	DataTables\Editor\ValidateOptions;

// The following statement can be removed after the first run (i.e. the database
// table has been created). It is a good idea to do this to help improve
// performance.
$db->sql( "CREATE TABLE IF NOT EXISTS `call_logs` (
	`id` int(10) NOT NULL auto_increment,
	`time_of_call` datetime,
	`call_from` varchar(255),
	`call_to` varchar(255),
	`call_recording` varchar(255),
	`call_duration` numeric(9,2),
	`call_type` varchar(255),
	PRIMARY KEY( `id` )
);" );

// Build our Editor instance and process the data coming from _POST
Editor::inst( $db, 'call_logs', 'id' )
	->debug( true )
	->fields(
		Field::inst( 'call_logs.time_of_call' )
			->validator( Validate::dateFormat( 'Y-m-d H:i:s' ) )
			->getFormatter( Format::datetime( 'Y-m-d H:i:s', 'Y-m-d H:i:s' ) )
			->setFormatter( Format::datetime( 'Y-m-d H:i:s', 'Y-m-d H:i:s' ) ),
		Field::inst( 'voip.provider_id' ),
		Field::inst( 'call_logs.call_from' ),
		Field::inst( 'call_logs.call_to' ),
		Field::inst( 'call_logs.call_recording' ),
		Field::inst( 'call_logs.call_duration' ),
		Field::inst( 'call_logs.call_type' ),
		Field::inst( 'call_logs.address_street' ),
		Field::inst( 'call_logs.address_city' ),
		Field::inst( 'call_logs.address_state' ),
		Field::inst( 'call_logs.address_zip' ),
		Field::inst( 'call_logs.address_country' ),
		Field::inst( 'call_logs.tech_nickname' ),
		Field::inst( 'call_logs.support_type' ),
		Field::inst( 'call_logs.tech_notes' )
	)
	->leftJoin( 'voip', 'voip.int_phone', '=', 'call_logs.call_to' )
	->process( $_POST )
	->json();
