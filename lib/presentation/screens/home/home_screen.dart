import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; 
import 'package:widget_app/config/theme/menu/menu_items.dart'; 

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  static const String name = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3'), 
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: appMenuItems.length,
      itemBuilder: ( context, index ){
        final menuItem = appMenuItems[index];
        return _CustomListTittle(menuItem: menuItem);
      }
    );
  }
}

class _CustomListTittle extends StatelessWidget {

  const _CustomListTittle({ 
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(menuItem.icon , color: colors.primary ),
      trailing: Icon( Icons.arrow_forward_ios_rounded, color: colors.primary ),
      title: Text(menuItem.tittle),
      subtitle: Text(menuItem.subTittle),
      onTap:() {
        
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: ( context ) => const ButtonsScreen(),
        //   )
        // );

        // Navigator.pushNamed(context, menuItem.link);
        // context.push( menuItem.link );
        context.pushNamed(menuItem.name);

      },
    );
  }
}