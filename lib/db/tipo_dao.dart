import 'package:projetoflutter/db/database_helper.dart';
import 'package:projetoflutter/tipo.dart';
class tipoDao{

  static Future<List<Tipo>> listarTipos() async{

    final db = await DatabaseHelper.getDatabase();
    final resultado = await db.query('tb_tipo');

    return resultado.map((mapa){
      return Tipo(
        mapa['cd_tipo'] as int,
        mapa['nm_tipo'] as String
      );
    }).toList();
  }
}