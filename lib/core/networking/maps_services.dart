import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class MapsServices {
  MapsServices();
  Placemark? currentPlace;

  Future<Placemark> fetchUserAddress() async {
    Position? position = await getCurrentLocation();

    await getAddressFromCoordinates(position!);

    return currentPlace!;
  }

  Future<Position?> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // التأكد من أن الخدمة مفعلة
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // لو الخدمة مش مفعلة
      print('Location services are disabled.');
      return null;
    }

    // طلب إذن الوصول
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        print('Location permission denied.');
        return null;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      print('Location permission is permanently denied.');
      return null;
    }

    // جلب الإحداثيات
    return await Geolocator.getCurrentPosition();
  }

  Future<void> getAddressFromCoordinates(Position position) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        Placemark place = placemarks[0];
        currentPlace = place;
        print("Country: ${place.country}");
        print("City: ${place.locality}");
        print("Governorate: ${place.administrativeArea}");
        print("street: ${place.subAdministrativeArea}");
        print("street: ${place.subLocality}");
        print("street: ${place.subThoroughfare}");
        print("street: ${place.name}");
      }
    } catch (e) {
      print(e);
    }
  }
}
