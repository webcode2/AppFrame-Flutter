import 'package:app_frame/src/navigations/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

class DefaultHomeScreen extends StatefulWidget {
  const DefaultHomeScreen({Key? key}) : super(key: key);

  @override
  State<DefaultHomeScreen> createState() => _DefaultHomeScreenState();
}

class _DefaultHomeScreenState extends State<DefaultHomeScreen> {
  final List<String> _fakeData = [
    'Isokariari Nyingibo Jane Daimete Jack',
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
  final guestNameController = TextEditingController();
  final commentController = TextEditingController();

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
            icon: const Icon(Icons.mode_night_outlined),
            onPressed: () {},
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
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                color: Colors.white,
                shape: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54, width: .3),
                ),
                elevation: 5,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Column(
                    children: [
                      Container(
                        alignment: AlignmentDirectional.topEnd,
                        child: Text(
                          DateFormat("dd-MM-yyyy").format(DateTime.now()),
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
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                    shadowColor: Colors.green.shade300,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                            const BorderSide(color: Colors.black54, width: .3)),
                    child: ListTile(
                      leading: const Icon(
                        Icons.person,
                        size: 60,
                      ),
                      title: Text(
                        _fakeData[index],
                        style: const TextStyle(
                          fontSize: 23,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Source Sans Pro",
                        ),
                      ),
                      trailing: TextButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(153, 255, 10, 10)),
                        ),
                        child: const Text(
                          "Sign Out",
                          style: TextStyle(color: Colors.black54, fontSize: 18),
                        ),
                      ),
                      subtitle: Text(timeago.format(DateTime.now().subtract(
                          const Duration(
                              days: 0, hours: 10, minutes: 2, seconds: 58)))),
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
          Icons.add,
          size: 30,
        ),
        onPressed: () {
          showModalBottomSheet<void>(
            useSafeArea: true,
            isScrollControlled: true,
            enableDrag: true,
            isDismissible: false,
            context: context,
            builder: (BuildContext context) {
              return Container(
                color: Colors.white54,
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: AnimatedPadding(
                      padding: MediaQuery.of(context).viewInsets,
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.decelerate,
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(bottom: 20),
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Colors.red.shade400),
                                iconColor:
                                    const MaterialStatePropertyAll(Colors.red),
                              ),
                              icon: Icon(Icons.arrow_downward_sharp,
                                  color: Colors.red.shade600),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              tooltip: "Tap or Slide to close Action",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 20, left: 20, top: 10, bottom: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    maxLength: 40,
                                    autofocus: true,
                                    style: const TextStyle(
                                      fontSize: 23,
                                    ),
                                    controller: guestNameController,
                                    decoration: const InputDecoration(
                                        hintText: "Name",
                                        contentPadding: EdgeInsets.only(
                                            bottom: 2.0, right: 5, left: 5),
                                        border: UnderlineInputBorder()),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.send_rounded,
                                      size: 35, color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: TextButton(
                                child: const Text("Add Comment"),
                                onPressed: () {}),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
