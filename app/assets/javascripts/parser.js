//= require_tree ./parser
//= require_directory .
function parseURL(url)
  	{
        var string = url.split(' ').join('%20');
    	return string;
    }