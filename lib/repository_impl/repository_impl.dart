import 'dart:convert';

import 'package:replicariverpov2/models/productos_models.dart';
import 'package:replicariverpov2/repository/AbstractProductoRpository.dart';
import 'package:replicariverpov2/utils/constante.dart';
import 'package:http/http.dart' as http;
import 'package:replicariverpov2/utils/convertidordelista.dart';

class ProductosRepositoryImpl extends AbstractProductosRepository {
  @override
  Future<List<Productos>> consultarProductos() async {
    try {
      var url = Uri.parse(ConstanteEndpoints.urlBase2);
      http.Response response = await http.get(url);
      List responseList = jsonDecode(response.body);

      List<Productos> listaProductos =
          (Generico().jsonStringifyToList(responseList))
              .map((i) => Productos.fromJson(i))
              .toList();

      return listaProductos;
    } catch (_) {
      rethrow;
    }
  }
}
