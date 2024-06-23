import 'package:flutter/material.dart';

class ServiceExampleListScreen extends StatefulWidget {
  static const path = "serviceexamplelist";
  const ServiceExampleListScreen({super.key});

  @override
  State<ServiceExampleListScreen> createState() => _ServiceExampleListScreenState();
}

class _ServiceExampleListScreenState extends State<ServiceExampleListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: CustomScrollView(

        slivers: [],
      ),
    );
  }
}