
/*
 * Editor client script for DB table call_logs
 * Created by http://editor.datatables.net/generator
 */

(function($){

$(document).ready(function() {
	var editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.call_logs.php',
		table: '#call_logs',
		fields: [
			{
				"label": "time_of_call:",
				"name": "time_of_call",
				"type": "datetime",
				"format": "YYYY-MM-DD HH:mm:ss"
			},
			{
				"label": "call_from:",
				"name": "call_from"
			},
			{
				"label": "call_to:",
				"name": "call_to"
			},
			{
				"label": "call_recording:",
				"name": "call_recording"
			},
			{
				"label": "call_duration:",
				"name": "call_duration"
			},
			{
				"label": "call_type:",
				"name": "call_type"
			}
		]
	} );

	var table = $('#call_logs').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.call_logs.php',
		columns: [
			{
				"data": "time_of_call"
			},
			{
				"data": "call_from"
			},
			{
				"data": "call_to"
			},
			{
				"data": "call_recording"
			},
			{
				"data": "call_duration"
			},
			{
				"data": "call_type"
			}
		],
		select: true,
		lengthChange: false,
		buttons: [
			{ extend: 'create', editor: editor },
			{ extend: 'edit',   editor: editor },
			{ extend: 'remove', editor: editor }
		]
	} );
} );

}(jQuery));

