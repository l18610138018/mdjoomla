function initSPPageBuilderGMap(t){jQuery(".sppb-addon-gmap-canvas",t).each(function(a){var e=jQuery(this).attr("id"),o=Number(jQuery(this).attr("data-mapzoom")),n=jQuery(this).attr("data-infowindow"),r="true"===jQuery(this).attr("data-mousescroll"),i=jQuery(this).attr("data-maptype"),d={lat:Number(jQuery(this).attr("data-lat")),lng:Number(jQuery(this).attr("data-lng"))},u=new google.maps.Map(t.getElementById(e),{center:d,zoom:o,scrollwheel:r}),p=new google.maps.Marker({position:d,map:u});if(n){n=new google.maps.InfoWindow({content:atob(n)});p.addListener("click",function(){n.open(u,p)})}u.setMapTypeId(google.maps.MapTypeId[i])})}jQuery(window).load(function(){initSPPageBuilderGMap(document)});