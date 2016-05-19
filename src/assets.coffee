params = { api_key: "24c770e85e1fa3c283a54e9d10dd18262b4fd460f9c4da2cd15fc9a48a696078" }
base_url = "https://demo.tandemvault.com/api/v1/assets"
url = "#{base_url}?#{$.param(params)}"

get_json = ->
	$.getJSON url

console.log(get_json())
