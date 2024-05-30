import 'package:diplom_main/Model/map/map_point.dart';
import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapScreen extends StatefulWidget {
  // Координаты для отображения на карте
  final double latitude;
  final double longitude;

  // Конструктор принимает координаты и передает их в состояние
  const MapScreen({super.key, required this.latitude, required this.longitude});

  // Создание состояния для StatefulWidget
  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

  // Позднее объявление контроллера карты
  late final YandexMapController _mapController;

  // Список для хранения точек на карте
  List<MapPoint> mapPoints = []; 

  // Добавление новой точки на карту прямо после инициализации состояния
  @override
  void initState() {
    super.initState();
    addMapPoint(MapPoint(latitude: widget.latitude, longitude: widget.longitude));
  }

  // Метод добавления новой точки на карту
  void addMapPoint(MapPoint point) {
    setState(() {
      mapPoints.add(point);
    });
  }

  // Получение текущих точек на карте
  List<MapPoint> _getMapPoints() {
    return mapPoints;
  }

  // Метод для генерации списка объектов маркера для отображения на карте
  List<PlacemarkMapObject> _getPlacemarkObjects(BuildContext context) {
    return _getMapPoints()
        .map(
          (point) => PlacemarkMapObject(
            mapId: MapObjectId('MapObject $point'),
            point: Point(latitude: point.latitude, longitude: point.longitude),
            opacity: 1,
            icon: PlacemarkIcon.single(
              PlacemarkIconStyle(
                image: BitmapDescriptor.fromAssetImage(
                  'lib/assets/map_point.png',
                ),
                scale: 2,
              ),
            ),
          ),
        )
        .toList();
  }

  // При уничтожении состояния, освобождаем ресурсы, занятые контроллером карты
  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  // Метод построения виджета
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: YandexMap(
        zoomGesturesEnabled: true,
        onMapCreated: (controller) async {
          // Когда карта создана, сохраняем ссылку на контроллер карты и перемещаем камеру к заданной точке
          _mapController = controller;
          await _mapController.moveCamera(
            CameraUpdate.newCameraPosition(
               CameraPosition(
                // Задаем целевую точку для камеры
                target: Point(
                  latitude: widget.latitude,
                  longitude: widget.longitude,
                ),
                zoom: 10,
              ),
            ),
          );
        },
        // Добавляем объекты-метки на карту
        mapObjects: _getPlacemarkObjects(context),
      ),
    );
  }
}