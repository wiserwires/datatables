
/*
 * Editor client script for DB table call_logs
 * Created by http://editor.datatables.net/generator
 */
var editor;
(function($){

$(document).ready(function() {
	editor = new $.fn.dataTable.Editor( {
		ajax: 'php/table.call_logs.php',
		table: '#call_logs',
		fields: [
			{
				"label": "provider_id:",
				"name": "voip.provider_id"
			},
			{
				"label": "time_of_call:",
				"name": "call_logs.time_of_call",
				"type": "datetime",
				"format": "YYYY-MM-DD HH:mm:ss"
			},
			
			{
				"label": "call_from:",
				"name": "call_logs.call_from"
			},
			{
				"label": "call_to:",
				"name": "call_logs.call_to"
			},
			{
				"label": "call_recording:",
				"name": "call_logs.call_recording"
			},
			{
				"label": "call_duration:",
				"name": "call_logs.call_duration"
			},
			{
				"label": "call_type:",
				"name": "call_logs.call_type"
			},
			{
				"label": "theAddress",
				"name": "theAddress"
			},
			{
				"label": "Street address:",
				"name": "call_logs.address_street"
			},
			{
				"label": "City:",
				"name": "call_logs.address_city"
			},
			{
				"label": "State:",
				"name": "call_logs.address_state"
			},
			{
				"label": "Zip code:",
				"name": "call_logs.address_zip"
			},
			{
				"label": "Country:",
				"name": "call_logs.address_country"
			},
			{
				"label": "Nickname:",
				"name": "call_logs.tech_nickname"
			},
			{
				"label": "Support type:",
				"name": "call_logs.support_type"
			},
			{
				"label": "Tech note:",
				"name": "call_logs.tech_notes"
			}
		]
	} );

	/*var table = $('#call_logs').DataTable( {
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
	} );*/
		var table = $('#call_logs').DataTable( {
		dom: 'Bfrtip',
		ajax: 'php/table.call_logs.php',
		columns: [
			{
				"data": "call_logs.time_of_call"
			},
			{
				"data": "voip.provider_id"
			},
			{
				"data": "call_logs.call_from"
			},
			{
				"data": "call_logs.call_to"
			},
			{
				"data": "call_logs.call_recording"
			},
			{
				"data": "call_logs.call_duration"
			},
			{
				"data": "call_logs.call_type"
			},
			{
				"data": "call_logs.address_street"
			},
			{
				"data": "call_logs.address_city"
			},
			{
				"data": "call_logs.address_state"
			},
			{
				"data": "call_logs.address_zip"
			},
			{
				"data": "call_logs.address_country"
			},
			{
				"data": "call_logs.tech_nickname"
			},
			{
				"data": "call_logs.support_type"
			},
			{
				"data": "call_logs.tech_notes"
			}
		],
		responsive: true,
		select: true,
		lengthChange: false,
		buttons: [
			{ extend: 'create', editor: editor },
			{ extend: 'edit',   editor: editor },
			{ extend: 'remove', editor: editor }
		]
	} );
	
	
	editor.on('edit', function() {
		// console.log('it works');
	    editor.show(); //Shows all fields
	    editor.hide('call_logs.time_of_call');
	    editor.hide('voip.provider_id');
	    editor.hide('call_logs.call_from');
	    editor.hide('call_logs.call_to');
	    editor.hide('call_logs.call_recording');
	    editor.hide('call_logs.call_duration');
	    editor.hide('call_logs.call_type');
	    
	    /*---------------------------------------------------------*/
	   
	// add auto complete part
	// Initialize the Google Events handler for address lookups
    // [START region_fillform]
	});
	
    
} );

}(jQuery));
/*
function initAutocomplete() {
	    var input = $('input', editor.field('theAddress').node()).get(0);
	    console.log('input', input);
	    var autocomplete = new google.maps.places.Autocomplete(
	        input,
	        { types: ['geocode'] });
	        // When the user selects an address from the dropdown,
	        // populate the address fields in the form.
	        google.maps.event.addListener(autocomplete, 'place_changed', function() {
	        fillInAddress();
	    });
	}

function fillInAddress() {
      // Get the place details from the autocomplete object.
      var place = autocomplete.getPlace();
 	  console.log(place);
      for (var component in componentForm) {
        document.getElementById(component).value = '';
        document.getElementById(component).disabled = false;
      }
 
      // Get each component of the address from the place details
      // and fill the corresponding field on the form.
      for (var i = 0; i < place.address_components.length; i++) {
        var addressType = place.address_components[i].types[0];
        if (componentForm[addressType]) {
          var val = place.address_components[i][componentForm[addressType]];
          document.getElementById(addressType).value = val;
        }
      }
//    document.getElementById("DTE_Field_City_chk").value = document.getElementById("locality").value;
      $("#DTE_Field_Delivery_Line_1").val($("#street_number").val() + " " + $("#route").val());
      $("#DTE_Field_City_chk").val($("#locality").val());
      $("#DTE_Field_State_chk").val($("#administrative_area_level_1").val());
      $("#DTE_Field_ZIP_Code").val($("#postal_code").val());
//    console.log(JSON.parse(JSON.stringify(place.address_components)));
    }*/
