import 'package:app_provider_nav/page/homescreen.dart';
import 'package:app_provider_nav/provider/contadorprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp(ChangeNotifierProvider(
    create: (_) => ProviderContador(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: HomeApp(),
    );
  }
}
