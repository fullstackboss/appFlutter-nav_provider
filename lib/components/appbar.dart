import 'package:app_provider_nav/provider/contadorprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBarra extends StatelessWidget implements PreferredSizeWidget {
  const AppBarra({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final valorEstado = context.watch<ProviderContador>().valorContador;

    return AppBar(
        title: const Text('App Bar'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        actions: <Widget>[
          Text(valorEstado.toString(), style: TextStyle(fontSize: 25)),
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
