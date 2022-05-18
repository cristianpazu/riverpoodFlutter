import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:replicariverpov2/repository/AbstractProductoRpository.dart';
import 'package:replicariverpov2/repository_impl/repository_impl.dart';

final abstracProductProvier = Provider<AbstractProductosRepository>(
  (ref)=>ProductosRepositoryImpl()
);