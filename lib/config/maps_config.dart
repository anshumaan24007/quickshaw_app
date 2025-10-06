class MapsConfig {
  static const String googleMapsApiKey = 'AIzaSyAxZ2f3LDE9NWOhvnsVLPqwqkgRlmhvgkk';
  
  static const double defaultLatitude = 25.321684;
  static const double defaultLongitude = 82.987289;
  
  static String getStaticMapUrl({
    required double lat,
    required double lng,
    int zoom = 14,
    int width = 640,
    int height = 360,
    List<MapMarker>? markers,
    String mapType = 'roadmap',
  }) {
    String url = 'https://maps.googleapis.com/maps/api/staticmap?'
        'center=$lat,$lng&'
        'zoom=$zoom&'
        'size=${width}x$height&'
        'maptype=$mapType&'
        'key=$googleMapsApiKey';
    
    if (markers != null && markers.isNotEmpty) {
      for (var marker in markers) {
        url += '&markers=color:${marker.color}%7C${marker.lat},${marker.lng}';
      }
    }
    
    return url;
  }
}

class MapMarker {
  final double lat;
  final double lng;
  final String color;
  
  const MapMarker({
    required this.lat,
    required this.lng,
    this.color = 'red',
  });
}
