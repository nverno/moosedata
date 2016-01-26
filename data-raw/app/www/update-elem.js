Shiny.addCustomMessageHandler(
    'update-elem',
    function(params) {
	var elem = $('#' + params.id);
	elem.html(params.text)
    }
)
