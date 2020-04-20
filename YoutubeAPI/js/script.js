//Implementacao da API do Youtube

var idCanal = 'UCVWwVZVLWonfxNwyJsdkGAQ ';
//Essa função ira buscar o Id de uma playlist de um usuário
$(document).ready(function(){
	$.get(
		"https://www.googleapis.com/youtube/v3/playlists",{
			part: 'snippet',
			channelId:  idCanal,
			key: 'AIzaSyBf_w-gztU8dev9LoMXOxtF5GsmKIsMf1I'},
			function(data){
				$.each(data.items, function(i, item){
					console.log(item);
					pid = item.id;
					getVids(pid);
				})
			}
	);
	//Essa funcao ira carregar os videos de uma determinada Playlist
	function getVids(pid){
	$.get(
		"https://www.googleapis.com/youtube/v3/playlistItems",{
			part: 'snippet',
			playlistId:  pid,
			key: 'AIzaSyBf_w-gztU8dev9LoMXOxtF5GsmKIsMf1I'},
			function(data){
				var output;
				$.each(data.items, function(i, item){
					console.log(item);
					videTitle = item.snippet.title;
					videoId = item.snippet.resourceId.videoId;
					
					//Criação da lista de videos, embed nao funciona em localhost
					output = '<li><iframe src=\"www.youtube.com/embed/' + videoId + '\"></iframe></li>';
					//Colocar na pagina HTML
					$('#results').append(output);
				})
			}
	);		
	}
});