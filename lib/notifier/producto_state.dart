import 'package:equatable/equatable.dart';
import 'package:replicariverpov2/models/productos_models.dart';

enum ProductosStatus {
  inicial,
  productosCargados,
  cargando,
}

class ProductosState extends Equatable {
  final ProductosStatus status;
  final List<Productos> listaProductos;

  const ProductosState({required this.status, required this.listaProductos});

  @override
  List<Object> get props => [status];

  factory ProductosState.inicial() {
    return ProductosState(
        status: ProductosStatus.inicial, listaProductos: const []);
  }

  ProductosState copyWith({
    ProductosStatus? status,
    List<Productos>? listaProductos,
  }) {
    return ProductosState(
      status: status ?? this.status,
      listaProductos: listaProductos ?? this.listaProductos,
    );
  }
}
