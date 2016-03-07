<%-- 
    Document   : contactUs
    Created on : Jan 29, 2016, 6:01:46 PM
    Author     : Xtravenger
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Express | Direction</title>
        <script>
            function initMap() {
                var destination = {lat: 1.298925, lng: 103.776104};
                var origin = {lat: <%=request.getParameter("lat")%>, lng: <%=request.getParameter("lng")%>}


                var map = new google.maps.Map(document.getElementById('map'), {
                    center: destination,
                    scrollwheel: false,
                    zoom: 7
                });

                var directionsDisplay = new google.maps.DirectionsRenderer({
                    map: map
                });

                // Set destination, origin and travel mode.
                var request = {
                    destination: destination,
                    origin: origin,
                    travelMode: google.maps.TravelMode.DRIVING
                };

                // Pass the directions request to the directions service.
                var directionsService = new google.maps.DirectionsService();
                directionsService.route(request, function (response, status) {
                    if (status == google.maps.DirectionsStatus.OK) {
                        // Display the route on the map.
                        directionsDisplay.setDirections(response);
                    }
                });
            }
        </script>
        <style>
            #map {
                width: 500px;
                height: 400px;
            }
        </style>
    </head>
    <body>    

        <div id="map"></div>
        <script src="https://maps.googleapis.com/maps/api/js?callback=initMap"
        async defer></script>    

        <%
            try {
                org.geocodews.Geocode_Service service = new org.geocodews.Geocode_Service();
                org.geocodews.Geocode port = service.getGeocodePort();
                // TODO initialize WS operation arguments here
                java.lang.String origin = request.getParameter("origin");
                // TODO process result here
                java.util.List<java.lang.Object> result = port.distance(origin);
                String val = "";
                out.print("<table cellspacing='10'><th>Distance</th><th>Duration</th><th>Direction</th>");
                for (int i = 0; i < result.size(); i++) {
                    val = (String) result.get(i);
                    String[] res = val.split(",");
                    out.print("<tr><td align='center'>" + res[0] + "</td><td align='center'>" + res[1] + "</td><td align='center'>" + res[2] + "</td></tr>");

                }
                out.print("</table>");
            } catch (Exception ex) {
                // TODO handle custom exceptions here
            }
        %>



    </body>
</html>
