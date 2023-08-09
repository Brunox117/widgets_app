import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen.';

  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
            'Ipsum ipsum consequat proident cupidatat laboris et cillum nisi labore esse do nostrud fugiat. Laboris excepteur sit pariatur exercitation. Minim occaecat pariatur sint pariatur irure laborum ad duis incididunt.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(), 
            child: const Text('Cancelar')),
          FilledButton(
            onPressed: () => context.pop(), 
            child: const Text('Aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Nisi irure ea Lorem anim magna fugiat adipisicing. Et veniam anim labore officia excepteur nulla officia magna velit dolor. Quis tempor non amet ex aliqua est cillum nulla commodo cillum. Mollit aliquip aliqua voluptate aute. Ullamco esse sint non voluptate commodo occaecat non dolore dolore velit ullamco. Nulla dolor cupidatat mollit elit fugiat cupidatat dolore.')
                ]);
              },
              child: const Text('Licencias usadas')),
          const SizedBox(
            height: 10,
          ),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar diálogo')),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
