import 'package:flutter/material.dart';

const items = <Map<String, dynamic>>[
  { 'elevation': 'asd', 'label': 'Elevation 0' }, 
];


class DashboardScreen extends StatelessWidget {
  
  const DashboardScreen({super.key}); 
  static const String name = 'dashboard_screen';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Home '),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 50, 60, 124),
        child: Column(
          children: [
            ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text('asdasd'),
                );
              },
            )
          ],
        ),
      ),
      body: const _DashboardView(),
    );
  }
}

class _DashboardView extends StatelessWidget {
  
  const _DashboardView();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
