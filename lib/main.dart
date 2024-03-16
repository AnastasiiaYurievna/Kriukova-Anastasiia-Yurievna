import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
} // Функция main - вызывает запуск приложения

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This is how you write a comment
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _status = 'Нажмите, чтобы изменить статус';
  final TextEditingController _controller = TextEditingController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _minus() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Мой профиль"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(Icons.account_circle, size: 100), // Иконка вместо изображения профиля
            const SizedBox(height: 20),
            const Text('Ваше имя', style: TextStyle(fontSize: 24)), // Имя пользователя
            const SizedBox(height: 10),
            Text(_status, style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic)), // Текущий статус
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Введите новый статус',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _status = _controller.text;
                });
              },
              child: const Text('Обновить статус'),
            ),
            const SizedBox(height: 20), // Добавлено для отступа между кнопками и текстом
            Text(
              'Счетчик лайков: $_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: _incrementCounter,
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.pink,
                    size: 24.0,
                  ),
                ),
                TextButton(onPressed: _minus, child: const Icon(
                  Icons.thumb_down,
                  color: Colors.grey,
                  size: 24.0,
                ),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
