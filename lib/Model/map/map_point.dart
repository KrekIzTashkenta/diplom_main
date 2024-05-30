import 'package:equatable/equatable.dart';

/// Модель точки на карте
class MapPoint extends Equatable {
 const MapPoint({
   required this.latitude,
   required this.longitude,
 });

 /// Широта
 final double latitude;

 /// Долгота
 final double longitude;

 @override
 List<Object?> get props => [latitude, longitude];
}

 
 
