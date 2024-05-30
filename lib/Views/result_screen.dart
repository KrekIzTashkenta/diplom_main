import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '/Model/questions_model.dart';
import 'mainMenu.dart';

class ResultScreen extends StatelessWidget {
  final int score;
  final int countryId;

  const ResultScreen({
    Key? key,
    required this.score,
    required this.countryId,
  }) : super(key: key);

  Future<void> _updateScore() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    final scoreRef = FirebaseFirestore.instance.collection('score').doc('${user.uid}_$countryId');
    final snapshot = await scoreRef.get();

    if (snapshot.exists) {
      await scoreRef.update({'score': score});
    } else {
      await scoreRef.set({
        'userId': user.uid,
        'countryId': countryId,
        'score': score,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // saveScore(); // Сохранить результат при загрузке экрана

    final int totalQuestions = questions.length; // Общее количество вопросов
    final double percentage = (score / totalQuestions) * 100; // Расчет процента

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Your Score:',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    height: 250,
                    width: 250,
                    child: CircularProgressIndicator(
                      strokeWidth: 10,
                      value: score / totalQuestions,
                      color: Colors.green,
                      backgroundColor: const Color.fromARGB(255, 255, 50, 50),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        score.toString(),
                        style: const TextStyle(fontSize: 80),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '${percentage.round()}%',
                        style: const TextStyle(fontSize: 25),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width * .9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.deepPurple,
                ),
                child: TextButton(
                  onPressed: () async {
                    await _updateScore();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: const Text(
                    'Вернуться в меню',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}