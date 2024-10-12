import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; 

class ButtonsScreen extends StatelessWidget {
  
  const ButtonsScreen({super.key});
  static const String name = 'buttons_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Buttons Screen '),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.arrow_back ),
        onPressed: (){
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton( onPressed: (){}, child: const Text('Elevated Button')),
            const ElevatedButton( onPressed: null, child: Text('Elevated Button Disabled')),
            ElevatedButton.icon( onPressed: (){}, icon: const Icon(Icons.access_alarm_outlined), label: const Text('ElevatedButton Icon')),
            FilledButton( onPressed: (){}, child: const Text('FilledButton')),
            FilledButton.icon( onPressed: (){}, icon: const Icon(Icons.access_alarm_outlined), label: const Text('FilledButton Icon')),
            OutlinedButton( onPressed: (){}, child: const Text('OutLineButton')),
            OutlinedButton.icon( onPressed: (){}, icon: const Icon(Icons.access_alarm_outlined), label: const Text('OutLineButton Icon')),
            TextButton( onPressed: (){}, child: const Text('TextButton')),
            TextButton.icon( onPressed: (){}, icon: const Icon(Icons.access_alarm_outlined), label: const Text('TextButton Icon')),
            IconButton( onPressed: (){}, icon: const Icon(Icons.access_alarm_outlined)),
            IconButton( onPressed: (){}, icon: const Icon(Icons.access_alarm_outlined), style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(colors.primary),
              iconColor: const WidgetStatePropertyAll(Colors.white)
            )),
            CustomButton()
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return  ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text('Hola Mundo', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}