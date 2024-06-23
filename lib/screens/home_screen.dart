import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:referal_market/screens/serviceexample_list_screen.dart';

class HomeScreen extends StatefulWidget {
  static const path = "home";
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
            child: Text("Все предложения"),
          ),
          // TextButton(
          //   onPressed: () {},
          //   child: Text("Раздел 2"),
          // ),
          // TextButton(
          //   onPressed: () {},
          //   child: Text("Раздел 3"),
          // ),
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
            onSelected: processClick
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.all(30),
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      constraints: BoxConstraints(
                        maxWidth: 500,
                        maxHeight: 400,
                        minHeight: 80,
                        minWidth: 100,
                      ),
                      padding: EdgeInsets.all(20),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ...pointBlock(1),
                        ...pointBlock(2),
                        ...pointBlock(3, isLast: true),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30),
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ЗАВЛЕКАЮЩИЙ ТЕКСТ?",
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        ElevatedButton(onPressed: () {}, child: Text("Зарегистрироваться"))
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

  void processClick(int res) {
    if(res == 1) {
      context.go(ServiceExampleListScreen.path);
    }
  }

  List<Widget> pointBlock(int number, {bool isLast = false}) => [
        CircleAvatar(
          maxRadius: 20,
          backgroundColor: Colors.yellow,
          child: Text(number.toString()),
        ),
        Text("TEXT $number"),
        if (!isLast)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              width: 5,
              height: 30,
              color: Colors.yellow,
            ),
          ),
      ];
}
