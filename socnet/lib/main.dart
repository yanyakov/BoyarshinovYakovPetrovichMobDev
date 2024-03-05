import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isEditing = false;
  String name = '';
  String city = '';
  String age = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Профиль'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50),
            ),
            SizedBox(height: 20),
            buildProfileField('Имя', name),
            buildProfileField('Город', city),
            buildProfileField('Возраст', age),
            SizedBox(height: 20),
            isEditing
                ? ElevatedButton(
                onPressed: () {
                  // Добавить логику сохранения данных
                  setState(() {
                    isEditing = false;
                  });
                },
                child: Text('Сохранить'))
                : ElevatedButton(
                onPressed: () {
                  setState(() {
                    isEditing = true;
                  });
                },
                child: Text('Изменить')),
          ],
        ),
      ),
    );
  }

  Widget buildProfileField(String label, String value) {
    return Row(
      children: [
        Text(label, style: TextStyle(fontSize: 18)),
        SizedBox(width: 10),
        Expanded(
          child: isEditing
              ? TextField(
            onChanged: (newValue) {
              // Добавить логику обновления данных
              setState(() {
                if (label == 'Имя') {
                  name = newValue;
                } else if (label == 'Город') {
                  city = newValue;
                } else if (label == 'Возраст') {
                  age = newValue;
                }
              });
            },
            decoration: InputDecoration(
              hintText: 'Введите $label',
            ),
          )
              : Text(value, style: TextStyle(fontSize: 18)),
        ),
      ],
    );
  }
}
