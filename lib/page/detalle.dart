import 'package:app_provider_nav/provider/contadorprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageDetalle extends StatelessWidget {
  const PageDetalle({super.key});

  @override
  Widget build(BuildContext context) {
    final valorEstado =
        context.watch<ProviderContador>().valorContador.toString();
    return Center(
      child: Text('El valor del listado es: $valorEstado'),
    );
  }
}
