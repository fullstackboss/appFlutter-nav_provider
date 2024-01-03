import 'package:app_provider_nav/provider/contadorprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageListado extends StatefulWidget {
  const PageListado({super.key});

  @override
  State<PageListado> createState() => _PageListadoState();
}

class _PageListadoState extends State<PageListado> {
  //No es necesario
  //int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              context.watch<ProviderContador>().valorContador.toString(),
              style: const TextStyle(fontSize: 46),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                setState(() {
                  context.read<ProviderContador>().incrementar();
                });
              },
              child: const Text('Click'),
            )
          ],
        ),
      ),
    );
  }
}
