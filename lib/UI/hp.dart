import 'package:flutter/material.dart';

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
      // Использование цветов темы, определенных в MyApp
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("Мой профиль"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/hi.jpg', width: 320, height: 240,),
            Text(
              'Лайки: $_counter',
              style: TextStyle(fontSize: 16),
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
            const SizedBox(height: 20),
            const Text('Крюкова Анастасия', style: TextStyle(fontSize: 20)), // Имя пользователя
            const SizedBox(height: 10),
            Text(_status, style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic)), // Текущий статус
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

          ],
        ),
      ),
    );
  }
}
