import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.purple,
      ),
      body: buildBody(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: const Icon(Icons.open_in_new_sharp)),
    );
  }

  Widget buildBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.purple,
            margin: const EdgeInsetsDirectional.symmetric(vertical: 10),
            width: 200,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 20,
                foregroundColor: Colors.black,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                alignment: const Alignment(1, 0),
              ),
              onPressed: () {},
              child: const Text("Enter"),
            ),
          ),
          Container(
            margin: const EdgeInsetsDirectional.symmetric(vertical: 10),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            color: Colors.purple,
            width: 200,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                  side: const BorderSide(color: Colors.white),
                ),
                onPressed: () {},
                child: const Text(
                  "Enter",
                )),
          ),
          Container(
            margin: const EdgeInsetsDirectional.symmetric(vertical: 10),
            color: Colors.purple,
            width: 200,
            child: IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: const Icon(Icons.run_circle_outlined)),
          ),
          Container(
            margin: const EdgeInsetsDirectional.symmetric(vertical: 10),
            color: Colors.purple,
            width: 200,
            child: TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                onPressed: () {},
                child: const Text("Enter")),
          ),
        ],
      ),
    );
  }
}
