params = { api_key: "24c770e85e1fa3c283a54e9d10dd18262b4fd460f9c4da2cd15fc9a48a696078" }
baseUrl = "https://demo.tandemvault.com/api/v1/assets"

imageTemplate = '<a href=\'#{{id}}\'>' + '<div class=\'col-xs-2 box\'>' + '<div class=\'img\'>' + '<img src=\'{{grid_url}}\'>' + '</div>' + '</div>' + '</a>'

$images = $('#images')
loadImage = ->
	url = "#{baseUrl}?#{$.param(params)}"
	$.get url, (images) ->
		$images.append(Mustache.render(imageTemplate, image)) for image in images

loadImage()
$(window).scroll ->
  if $(window).scrollTop() == $(document).height() - $(window).height()
    loadImage()

$('#search').on 'keyup', ->
	params['q'] = $('#search').val()
	$('#images').empty()
	loadImage()

$('#sort li').click ->
	selection = $(@).text().toLowerCase().split(' ').join('_')
	params['sort'] = selection
	$('#images').empty()
	loadImage()
