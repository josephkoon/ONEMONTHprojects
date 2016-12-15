//input into search form and press search

document.querySelector(".search").addEventListener('click',function(){
	var input = document.querySelector("input").value;
	console.log(input);
});



//get data from soundcloud API

SC.initialize({
  client_id: 'YOUR_CLIENT_ID'
});

// find all sounds of buskers licensed under 'creative commons share alike'
SC.get('/tracks', {
  q: 'buskers', license: 'cc-by-sa'
}).then(function(tracks) {
  console.log(tracks);
});




//display soundcloud data as multiple ’cards’

//add favorites to ‘playlist’ left sidebar and play





