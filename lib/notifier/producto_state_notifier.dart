import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:replicariverpov2/models/productos_models.dart';
import 'package:replicariverpov2/notifier/producto_state.dart';
import 'package:replicariverpov2/provider/providers.dart';
import 'package:replicariverpov2/repository/AbstractProductoRpository.dart';

class ProductoStateNotifier extends StateNotifier<ProductosState> {
  final AbstractProductosRepository _abstractProductosRepository;

  ProductoStateNotifier(Ref ref)
      : _abstractProductosRepository = ref.read(abstracProductProvier),
        super(ProductosState.inicial());

  consultarProductos() async {
    try {
      state = state.copyWith(status: ProductosStatus.cargando);
      List<Productos> lsitarProductos =
          await _abstractProductosRepository.consultarProductos();
      state = state.copyWith(
          status: ProductosStatus.productosCargados,
          listaProductos: lsitarProductos);
    } catch (_) {
      rethrow;
    }
  }
}
