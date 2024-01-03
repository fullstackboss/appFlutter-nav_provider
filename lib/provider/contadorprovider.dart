import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderContador with ChangeNotifier {
  int _contador = 0;

  int get valorContador => _contador;

  void incrementar() {
    _contador++;
    notifyListeners();
  }
}
