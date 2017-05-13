/*
	Data 2 Visualize on map ...
*/
var museums = [
  {title: "Museo Nacional del Prado", lat: 40.413722, lng: -3.692412},
  {title: "Museo de Historia de Madrid", lat: 40.4259, lng: -3.70074},
  {title: "Museo Thyssen-Bornemisza", lat: 40.416111, lng: -3.695}, 
  {title: "Museo Reina Sofía", lat: 40.408889, lng: -3.694444},
  {title: "Museo de Arte Contemporáneo de Madrid", lat: 40.427852, lng: -3.710681},
  {title: "Museo Nacional de Antropología de Madrid", lat: 40.407694, lng: -3.688975},
  {title: "Museo Cerralbo", lat: 40.423684, lng: -3.714577},
  {title: "Museo Sorolla", lat: 40.435404, lng: -3.692539},
  {title: "Museo Romanticismo Madrid", lat: 40.425869, lng: -3.698839},
  {title: "Museo de América Madrid", lat: 40.438131, lng: -3.722069},
  {title: "Museo del Traje Madrid", lat: 40.44, lng: -3.728611},
  {title: "Museo Lázaro Galdiano", lat: 40.448189, lng: -3.683594},
  {title: "Museo del Ferrocarril Madrid", lat: 40.398333, lng: -3.694167},
  {title: "Museo del Aire Madrid", lat: 40.368744, lng: -3.80085},
  {title: "Museo Naval Madrid", lat: 40.417456, lng: -3.692804},
  {title: "Real Academia de Bellas Artes", lat: 40.418056, lng: -3.700278}
];

/*
	Museum Class 2 build markers on map ...	
*/
var Museum = function(museum){
	var self = this;
	this.title = museum.title;
	this.lng = museum.lng;
	this.lat = museum.lat;
	this.infowindow = new google.maps.InfoWindow();
	this.marker = new google.maps.Marker({
		map: map,
		title: self.title,
		position: new google.maps.LatLng(self.lat, self.lng)
	});

	this.fromNeo2Map = function() {

		/*
			Neo4j call 2 recover DataBase info ...
		*/
		var neo4jTimeout = setTimeout(function(){
			self.infoMuseum = '<div class="info-window"><div class="museum-title">'  + self.title + '</div>';
        	self.infoMuseum = self.infoMuseum + '<div> Apologizes, Museum´s Info not available right now ... </div>';
        	self.infowindow.setContent(self.infoMuseum);
  		}, 3000);
		
		$.ajaxSetup({
		    headers: {
		        "Authorization": "Basic bmVvNGo6bmVvNGowMQ==" 
		    }
		});

		$.ajax({
			type: "POST",
			dataType: "json",
		    contentType: "application/json;charset=UTF-8",
		    url: "http://192.168.33.10:7474/db/data/transaction/commit ",
		    data: JSON.stringify({
		      statements: [{
		        statement: "MATCH(W:WEB)-[]->(M:MUSEUM{NAME: {name}})<-[]-(I:IMAGE) RETURN W.URL, I.SRC",
		        parameters: {
		          name: self.title
		        }
		      }]
		    }),

		    success: function (data, textStatus, jqXHR) {
		        if(typeof data.results[0].data[0] != 'undefined'){
		          var record = data.results[0].data[0].row;
		          self.infoMuseum = '<div class="info-window"><div class="museum-title">'  + self.title + '</div>';
		          self.infoMuseum = self.infoMuseum + '<hr><div><a href="' + record[0] + '" alt="' + self.title + '"><img src="' + record[1] + '"></a></div></div>';
		          clearTimeout(neo4jTimeout);
		        }
		        else{
		        	self.infoMuseum = '<div class="info-window"><div class="museum-title">'  + self.title + '</div>';

		        }
		    },

		    error: function (jqXHR, textStatus, errorThrown) {
		        self.infoMuseum = '<div> Upps ... it seems neo4j is not available  ... </div>';
        		self.infowindow.setContent(self.infoMuseum);
		    }
		});

	}();

	/*
		Function 2 Show museum info ...
	*/
	this.openInfowindow = function() {
		for (var i=0; i < locationsModel.locations.length; i++) {
   			locationsModel.locations[i].infowindow.close();
  		}
		map.panTo(self.marker.getPosition())
		self.infowindow.setContent(self.infoMuseum);
		self.marker.setAnimation(google.maps.Animation.BOUNCE);
        	setTimeout(function() {
          	self.marker.setAnimation(null);
      	}, 2100);
		self.infowindow.open(map,self.marker);
	};

	/*
		Marker listener ...
	*/
	this.addListener = google.maps.event.addListener(self.marker,'click', (this.openInfowindow));
};

/*
	Main ...
*/
var locationsModel = {
	locations:[],
	query: ko.observable(''),
};

museums.forEach(function(museum){
	locationsModel.locations.push(new Museum(museum));
});

locationsModel.search = ko.dependentObservable(function() {
	var self = this;
	var search = this.query().toLowerCase();
		return ko.utils.arrayFilter(self.locations, function(location) {
			return location.title.toLowerCase().indexOf(search) >= 0;
	});
}, locationsModel);

ko.applyBindings(locationsModel);
