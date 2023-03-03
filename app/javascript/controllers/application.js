import "jquery"; 
import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application


$('#search-form').on('submit', function(e) {
  e.preventDefault();
  var iata_code = $('#iata-code').val();
  $.ajax({
    url: '/user/weather',
    type: 'GET',
    data: { iata_code: iata_code },
    success: function(response) {
      $('#weather-data').html(response);
    }
  });
});


export { application }
