import 'package:flutter/material.dart';

class Listas {
  List<List> listaPrincipal = new List();

  Listas() {
    this.listaPrincipal.add(new List<String>());
  }

  void add_list_element(element, numero_lista) {}

  void add_new_list(sub_lista) {
    this.listaPrincipal.add(sub_lista);
  }

  void delete_list(sub_lista) {
    this.listaPrincipal.remove(sub_lista);
  }
}
