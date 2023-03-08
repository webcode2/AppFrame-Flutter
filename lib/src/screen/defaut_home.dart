import 'package:flutter/material.dart';

class DefaultHomeScreen extends StatefulWidget {
  const DefaultHomeScreen({Key? key}) : super(key: key);

  @override
  State<DefaultHomeScreen> createState() => _DefaultHomeScreenState();
}

class _DefaultHomeScreenState extends State<DefaultHomeScreen> {
  final List<String> _fakeData = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      Text(
                        DateTime.now().toIso8601String(),
                      ),
                    ],
                  )),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _fakeData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    shadowColor: Colors.green.shade300,
                    color: Colors.white,
                    elevation: 5,
                    child: ListTile(
                      leading: const Icon(
                        Icons.person,
                        size: 60,
                      ),
                      title: Text(_fakeData[index]),
                      trailing: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green.shade600),
                        ),
                        child: const Text("Sign Out"),
                      ),
                      subtitle: Text('This is item $index'),
                      onTap: () {
// Do something when the user taps on the list tile
                      },
                    ),
                  );
                },
              ),
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade600,
        elevation: 8,
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {},
      ),
    );
  }
}
