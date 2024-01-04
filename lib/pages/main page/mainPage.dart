// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('나의 하루'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          CalendarDatePicker(
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2300),
            onDateChanged: (value) {},
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    title: Text('$index'),
                    trailing: const IconButton(
                      icon:  Icon(Icons.delete),
                      onPressed: null,
                    ),
                    onTap: () => Get.toNamed('/view'),
                  ),
                ),
                itemCount: 100,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed('/add'),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Thrid extends StatelessWidget {
  const Thrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('추가'),
        actions: const [
          TextButton(
            onPressed: null,
            child: Text('추가'),
          )
        ],
        centerTitle: false,
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: '제목',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: '내용', border: OutlineInputBorder()),
                maxLines: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
