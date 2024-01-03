import 'package:app_provider_nav/provider/contadorprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PageSetting extends StatelessWidget {
  const PageSetting({super.key});

  @override
  Widget build(BuildContext context) {
    int vcontador = context.watch<ProviderContador>().valorContador;
    return Center(
      child: Text(vcontador.toString(),
          style: TextStyle(fontSize: 78, color: Colors.deepOrangeAccent)),
    );
  }
}
