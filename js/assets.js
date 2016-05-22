// Generated by CoffeeScript 1.10.0
(function() {
  var $images, baseUrl, imageTemplate, loadImage, params;

  params = {
    api_key: "24c770e85e1fa3c283a54e9d10dd18262b4fd460f9c4da2cd15fc9a48a696078"
  };

  baseUrl = "https://demo.tandemvault.com/api/v1/assets";

  imageTemplate = '<a href=\'#{{id}}\'>' + '<div class=\'col-xs-2 box\'>' + '<div class=\'img\'>' + '<img src=\'{{grid_url}}\'>' + '</div>' + '</div>' + '</a>';

  $images = $('#images');

  loadImage = function() {
    var url;
    url = baseUrl + "?" + ($.param(params));
    return $.get(url, function(images) {
      var i, image, len, results;
      results = [];
      for (i = 0, len = images.length; i < len; i++) {
        image = images[i];
        results.push($images.append(Mustache.render(imageTemplate, image)));
      }
      return results;
    });
  };

  loadImage();

  $(window).scroll(function() {
    if ($(window).scrollTop() === $(document).height() - $(window).height()) {
      return loadImage();
    }
  });

  $('#search').on('keyup', function() {
    params['q'] = $('#search').val();
    $('#images').empty();
    return loadImage();
  });

  $('#sort li').click(function() {
    var selection;
    selection = $(this).text().toLowerCase().split(' ').join('_');
    params['sort'] = selection;
    $('#images').empty();
    return loadImage();
  });

}).call(this);
