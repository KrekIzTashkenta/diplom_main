class CountryInfo {
  final String name;
  final String capital;
  final String population;
  final String description;
  final String flagImages;
  final double latitude;
  final double longitude;

  CountryInfo({
    required this.name,
    required this.capital,
    required this.population,
    required this.description,
    required this.flagImages,
    required this.latitude,
    required this.longitude,
  });

  static List<CountryInfo> countriesInfo = [
    CountryInfo(
      name: 'Австралия',
      capital: 'Канберра',
      population: '25 млн',
      description:
          'Австралия — страна в Южном полушарии, включающая в себя континент Австралию, остров Тасманию и множество других островов в Индийском и Тихом океанах. Официальное название страны — Содружество Австралии.',
      flagImages: 'lib/assets/countriesAssets/country1.jpg',
      latitude: -33.865255,
      longitude: 151.216484,
    ),
    CountryInfo(
      name: 'Бразилия',
      capital: 'Бразилиа',
      population: '215 млн',
      description:
          'Брази́лия, официальное название — Федеративная Республика Бразилия, — крупнейшее государство Южной Америки и восьмое по величине в мире. Столица — город Брази́лиа.',
      flagImages: 'lib/assets/countriesAssets/country2.jpg',
      latitude: -15.802118,
      longitude: -47.889071,
    ),
    CountryInfo(
      name: 'Эфиопия',
      capital: 'Аддис-Абеба',
      population: '114 млн',
      description:
          'Эфиопия — государство в Восточной Африке, на Сомалийском плече, в восточной части Африканского рифта. Граничит с Эритреей на севере, Джибути и Сомали на востоке, Кенией и Южным Суданом на юге и с Суданом на западе.',
      flagImages: 'lib/assets/countriesAssets/country3.jpg',
      latitude: 9.035835, 
      longitude: 38.752459,
    ),
    CountryInfo(
      name: 'Иран',
      capital: 'Тегеран',
      population: '83 млн',
      description:
          'Иран — государство в Юго-Западной Азии. Омывается водами Персидского залива и Оманского залива. Граничит на северо-западе с Арменией, Азербайджаном и Туркменистаном.',
      flagImages: 'lib/assets/countriesAssets/country4.jpg',
      latitude: 35.699706, 
      longitude: 51.337425,
    ),
    CountryInfo(
      name: 'Италия',
      capital: 'Рим',
      population: '60 млн',
      description:
          'Италия — государство в Южной Европе, на Апеннинах, в Альпах и на Сицилии, Сардинии и многих других островах. Граничит на севере с Швейцарией и Австрией, на западе — с Францией.',
      flagImages: 'lib/assets/countriesAssets/country5.jpg',
      latitude: 41.887064,
      longitude: 12.504809,
    ),
    CountryInfo(
      name: 'Япония',
      capital: 'Токио',
      population: '126 млн',
      description:
          'Япония — государство в Восточной Азии. Расположена на архипелаге в Тихом океане, к востоку от Китая, России и Корейского полуострова.',
      flagImages: 'lib/assets/countriesAssets/country6.jpg',
      latitude: 35.681729,
      longitude: 139.753927,
    ),
    CountryInfo(
      name: 'Россия',
      capital: 'Москва',
      population: '146 млн',
      description:
          'Росси́я, также Российская Федера́ция — крупнейшее по территории государство в мире, расположенное на северо-востоке Евразии. Столица — Москва.',
      flagImages: 'lib/assets/countriesAssets/country7.jpg',
      latitude: 55.755864,
      longitude: 37.617698,
    ),
    CountryInfo(
      name: 'США',
      capital: 'Вашингтон',
      population: '331 млн',
      description:
          'Соединённые Шта́ты Аме́рики (США) — федеративное государство, состоящее из 50 штатов, одного федерального округа, пяти областей США и других земельных владений. Большая часть страны находится в Северной Америке, между Канадой и Мексикой.',
      flagImages: 'lib/assets/countriesAssets/country8.jpg',
      latitude: 38.899513,
      longitude: -77.036536,
    ),
  ];
}
