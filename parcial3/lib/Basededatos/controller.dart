import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';


class Equip {
  
  late String _id;
  late String _name;
  late String _entrenador;
  late String _estaEnPrimera;
  late String _web;
  Equip(this._id,this._name,this._entrenador,this._estaEnPrimera,
      this._web);
  

  Equip.map(dynamic obj){
    this._name = obj['name'];
    this._entrenador = obj['entrenador'];
    this._estaEnPrimera = obj['estaEnPrimera'];
    this._web = obj['web'];
    
  }

  String get id => _id;
  String get name => _name;
  String get entrenador => _entrenador;
  String get estaEnPrimera => _estaEnPrimera;
  String get web => _web;
 

  Equip.fromSnapShot(DataSnapshot snapshot){
    _id = snapshot.key!;
    _name = snapshot.value['name'];
    _entrenador = snapshot.value['codebar'];
    _estaEnPrimera = snapshot.value['description'];
    _web = snapshot.value['web'];
    
  }
}
