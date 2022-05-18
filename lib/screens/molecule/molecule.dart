import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:replicariverpov2/injectionController/depencey_injeccion.dart';
import 'package:replicariverpov2/models/productos_models.dart';
import 'package:replicariverpov2/notifier/producto_state.dart';
import 'package:replicariverpov2/provider/providers.dart';
import 'package:replicariverpov2/screens/atoms/appbar.dart';
import 'package:replicariverpov2/screens/atoms/icons.dart';

class ListaProductosTemplate extends HookConsumerWidget {
  const ListaProductosTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final estadosProductos = ref.watch(productoStateNotifierProvier);
    final listaP = estadosProductos.listaProductos;

    _llamarDatos() {
      ref.watch(productoStateNotifierProvier.notifier).consultarProductos();
    }

    /*ref.listen(productoStateNotifierProvier,
        (previous, ProductosState productosState) {
      if (productosState.status == ProductosStatus.productosCargados) {}
    });*/

    return Scaffold(
      appBar: AppBarMenu().menu(context),
      body: InkWell(
          onTap: _llamarDatos,
          child: Container(
            child: ListView.builder(
                itemCount: listaP.length,
                itemBuilder: (context, index) => Card(
                        child: ListTile(
                      leading: IconsTodo().Icon2(),
                      title: Text('${listaP[index].nombre}'),
                      subtitle: Text('${listaP[index].precio}'),
                    ))),
          )),
    );
  }
}
