import 'package:app_frame/src/navigations/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultHomeScreen extends StatefulWidget {
  const DefaultHomeScreen({Key? key}) : super(key: key);

  @override
  State<DefaultHomeScreen> createState() => _DefaultHomeScreenState();
}

class _DefaultHomeScreenState extends State<DefaultHomeScreen> {
  final List<String> _fakeData = [
    'Savior',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Peter',
    'Item 7',
    'Item 8',
    'Adesuwa',
    'Item 10',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.grey),
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.white60, // Navigation bar
          systemNavigationBarIconBrightness: Brightness.dark, // Navigation bar
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.green,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.green,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Column(children: [
            Card(
                shadowColor: Colors.transparent,
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                color: Colors.white,
                elevation: 4,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Column(
                    children: [
                      Container(
                        alignment: AlignmentDirectional.topEnd,
                        child: Text(
                          DateTime.now().toIso8601String(),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          "Hi Good Morning Peterson",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              color: Colors.green.shade800),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Access Code",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Source Sans Pro",
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "3095",
                            style: TextStyle(
                                fontSize: 45,
                                fontFamily: "Source Sans Pro",
                                fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Guest",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Source Sans Pro",
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "Peterson Brown",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Source Sans Pro",
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "expires in :",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Source Sans Pro",
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "6hours",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Source Sans Pro",
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ],
                  ),
                )),
            Expanded(
              child: ListView.builder(
                itemCount: _fakeData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 2,
                    margin:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                    shadowColor: Colors.green.shade300,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide:
                            BorderSide(color: Colors.black87, width: .5)),
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
                              MaterialStatePropertyAll(Colors.redAccent),
                        ),
                        child: const Text("Sign Out"),
                      ),
                      subtitle: Text('This is item $index'),
                      onTap: () {
                        //TODO Do something when the user taps on the list tile
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
          Icons.edit,
          size: 30,
        ),
        onPressed: () {},
      ),
    );
  }
}
