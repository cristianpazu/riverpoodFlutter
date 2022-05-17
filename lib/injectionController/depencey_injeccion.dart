import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:replicariverpov2/notifier/producto_state.dart';
import 'package:replicariverpov2/notifier/producto_state_notifier.dart';

final productoStateNotifierProvier = StateNotifierProvider<ProductoStateNotifier,ProductosState>((ref)=>
ProductoStateNotifier(ref)
);