params = { api_key: "24c770e85e1fa3c283a54e9d10dd18262b4fd460f9c4da2cd15fc9a48a696078" }
baseUrl = "https://demo.tandemvault.com/api/v1/assets"
url = "#{baseUrl}?#{$.param(params)}"

get_json = ->
	$.getJSON url

console.log(get_json())
