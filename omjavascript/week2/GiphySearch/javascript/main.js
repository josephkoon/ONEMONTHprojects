//BUTTON CLICK EVENT select .js-go button class and add click event
document.querySelector(".js-go").addEventListener('click',function(){
	//INPUT FROM FORM FIELD get the input vaue from input field
	var input = document.querySelector("input").value;
	pushToDOM(input);
});



//'ENTER' PRESS EVENT on button press
document.querySelector(".js-userinput").addEventListener('keyup',function(e){
	//INPUT FROM FORM FIELD get the input vaue from input field
	var input = document.querySelector("input").value;
	
	//IF ENTER IS PRESSED (enter is key 13) push to DOM
	if(e.which === 13){
		pushToDOM(input);
	}
});



//GIPHY API
var url = "http://api.giphy.com/v1/gifs/search?q="+input+"&api_key=dc6zaTOxFJmzC"

//AJAX REQUEST
var GiphyAJAXCall = new XMLHttpRequest();
GiphyAJAXCall.open('GET',url);
GiphyAJAXCall.send();

//LOAD when the data is loaded, 
GiphyAJAXCall.addEventListener('load',function(e){
	//STORE THE DATA FROM API
	var data = e.target.response;
	pushToDOM(data);
});



//PUSH INPUT TO THE DOM
function pushToDOM(input){
	//Clean up the JSON data
	var response = JSON.parse(input);
	//get the URL from the JSON
	var imageUrls = response.data;
	//WRITE INPUT TO CONTAINER select the main container class
	var container = document.querySelector(".js-container");
	
	//loop through each of the Urls
	imageUrls.forEach(function(image){
		//save the url to src
		var src = image.images.fixed_height.url;
		
		//write the 'input' text to the container in addition to existing
		container.innerHTML = container.innerHTML + "<img src="+src+" class=container-image>";

	});
			
	
};
