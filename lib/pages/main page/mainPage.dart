import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('나의 하루'),
      ),
        body: Column(
          children: [
            CalendarDatePicker(
              initialDate: DateTime.now(),
              firstDate: DateTime(1900),
              lastDate: DateTime(2300),
              onDateChanged: (value) {},
            ),
            ListView.builder(itemBuilder: (context, index) => const ListTile(
              title: Text('asdf'),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: null,
                ),
              ),
              itemCount: 100,
            )
          ],
        ),
    );
  }
}
