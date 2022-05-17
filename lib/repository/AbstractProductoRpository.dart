import 'package:replicariverpov2/models/productos_models.dart';

abstract class AbstractProductosRepository{
  Future<List<Productos>> consultarProductos();
}