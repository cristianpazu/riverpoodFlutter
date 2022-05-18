
class Productos{
  int? id;
  String? nombre;
  String? precio;
  String? categoria;

  Productos({
    this.id,
    this.nombre,
    this.precio,
    this.categoria
  });
  factory Productos.fromJson(Map<String, dynamic>json)=>

  Productos(
    id: json["id"],
    nombre: json["nombre"],
    precio: json["precio"],
    categoria: json["categoria"]
  );

   Map<String, dynamic> toMap()=>{
    "id":id,
    "nombre":nombre,
    "precio":precio,
    "categoria":categoria
  };


}