import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:replicariverpov2/screens/molecule/molecule.dart';
import 'package:replicariverpov2/screens/organismo/organismo.dart';

void main() {
  runApp(ProviderScope(child: MyAPp()));
}

class MyAPp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => ListaProductosTemplate(),
      },
    );
  }
}
