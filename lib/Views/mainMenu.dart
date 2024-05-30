import 'package:diplom_main/Model/countriesInfo.dart';
import 'package:diplom_main/Views/quiz_screen.dart';
import 'package:diplom_main/widgets/country_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'categories_screen.dart';

class HomePage extends StatelessWidget {
  var category = [
    'Европа',
    'Азия',
    'Африка',
    'Северная Америка',
    'Южная Америка',
    'Австралия'
  ];

  List<String> countryNames = [
    'Австралия',
    'Бразилия',
    'Эфиопия',
    'Иран',
    'Италия',
    'Япония',
    'Россия',
    'США'
  ];

  final List<String> routes = [
    '/australia',
    '/brazil',
    '/ethiopia',
    '/iran',
    '/italy',
    '/japan',
    '/russia',
    '/usa',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 184, 184, 184),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Главное меню'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.of(context).pushNamed('/profile');
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Material(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 184, 184, 184)),
                        child: ListView.builder(
                          itemCount: 8,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, routes[index]);//переход к викторине о стране 
                              },
                              child: Container(
                                width: 160,
                                height: 200,
                                padding: const EdgeInsets.all(20),
                                margin: const EdgeInsets.only(left: 15, right: 15),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'lib/assets/countriesAssets/country${index + 1}.jpg',
                                    ),
                                    fit: BoxFit.cover,
                                    opacity: 0.7,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const Spacer(),
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        countryNames[index],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //2
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      for (int i = 0; i < 6; i++)
                        InkWell(
                          onTap: () {
                            // Перейти на страницу CategoriesScreen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CategoriesScreen(categoryIndex: i)),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(color: Colors.black26, blurRadius: 4),
                              ],
                            ),
                            child: Text(
                              category[i],
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 9,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 8) {
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: InkWell(
                        onTap: () {
                          // Переходим на страницу QuizScreen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuizScreen(countryId: index,),
                            ),
                          );
                        },
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                              image: AssetImage(
                                  'lib/assets/countriesAssets/quizka.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Перейти к викторине',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    // Этот блок будет выполнен для остальных элементов списка
                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CountryDetailsScreen(
                                    countryInfo:
                                        CountryInfo.countriesInfo[index],
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'lib/assets/flags/country${index + 1}.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  countryNames[index],
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
