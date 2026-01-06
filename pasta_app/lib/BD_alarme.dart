import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


class DadosAlarme{
  Database? _database;

  Future<Database>  inicializarbanco()async{
    if(_database != null){
      return _database!;
    }else{
      return _database = await openDatabase(join(await getDatabasesPath(), 'alarme.db'),
        version: 1,
        onCreate: (db,versao)async{
            await db.execute('CREATE TABLE horario(id INTEGER PRIMARY KEY AUTOINCREMENT, hora TEXT, minuto TEXT, dias TEXT, sons TEXT, ativarsons TEXT, vibra TEXT)');
        },
      );
    }
  }

  void definirhora(String h, String, String m, String d, String s, String a, String v)async{
    if(_database != null){
      await _database!.insert('horario', {'hora':h, 'minuto': m, 'dias': d, 'sons': s, 'ativarsons': a, 'vibra': v});
    }
  }

  Future<List<Map<String, Object?>>?> trazerhora()async{
    if(_database != null){
      return await _database!.query('horario');
    }else{
      return null;
    }
  }

}