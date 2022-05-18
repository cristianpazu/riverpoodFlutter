import 'package:flutter/material.dart';

class UiTexto{
  final String? texto;
  final String? tmaTexto;
  final TextAlign? alineacion;

  UiTexto({
  this.texto,
  this.tmaTexto,
  this.alineacion
  });

  int seleccionarTtexto(tmaTexto){
    int tama=10;
    switch (tmaTexto){
      case "A":
      tama = 14;
      break;
       case "B":
      tama = 16;
      break;
      
    }
    return tama;
  }

  Widget texto1(){
    return Text(
      texto ?? '',
      style: const TextStyle(
        color: Colors.black,
      ),
      textAlign: TextAlign.center,
    );
  }
   Widget titulo(){
    return Text(
      texto ?? '',
      style: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),
      textAlign: TextAlign.center,
    );
  }
}