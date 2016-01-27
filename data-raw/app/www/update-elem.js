Shiny.addCustomMessageHandler(
    'flash-messge',
    function(params) {
	var elem = $('#' + params.id);
	elem.html(params.text)
    }
)
