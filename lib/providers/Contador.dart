import 'package:flutter/cupertino.dart';

class Contador with ChangeNotifier {
  int _contador = 0;

  get contador {
    return _contador;
  }

  sumar() {
    _contador++;
    notifyListeners();
  }

  restar() {
    _contador--;
    notifyListeners();
  }
}
