import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> cards = ["card1", "card2", "card3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Linker?"),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text("Раздел 1"),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Раздел 2"),
          ),
          TextButton(
            onPressed: () {},
            child: Text("Раздел 3"),
          ),
          PopupMenuButton(
            icon: Icon(Icons.menu),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text("Действие 1"),
                value: 1,
              ),
              PopupMenuItem(
                child: Text("Действие 2"),
                value: 2,
              ),
              PopupMenuItem(
                child: Text("Действие 3"),
                value: 3,
              ),
            ],
            onSelected: (v) {},
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        TextField(),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Кнопка"),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ...cards.map((e) => Container(
                              height: MediaQuery.of(context).size.width * 0.3,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(e),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        TextField(),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Кнопка"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
