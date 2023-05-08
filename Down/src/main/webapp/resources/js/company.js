   var map;
        function initMap() {
            var cityHall = {lat: 37.478749676929816, lng: 126.8786530229903};

            var defaultOptions = {
                zoom: 18,
                center: cityHall,
                disableDefaultUI:true,
                zoomControl: true
                };
            map = new google.maps.Map(document.getElementById('map'), defaultOptions);

            var marker = new google.maps.Marker({position: cityHall, map: map});
        }
        
        
        
        
       
        
        
  //37.478749676929816, 126.8786530229903













window.initMap = initMap;