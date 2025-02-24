import '../database.dart';

class MotoristasTable extends SupabaseTable<MotoristasRow> {
  @override
  String get tableName => 'motoristas';

  @override
  MotoristasRow createRow(Map<String, dynamic> data) => MotoristasRow(data);
}

class MotoristasRow extends SupabaseDataRow {
  MotoristasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MotoristasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get refMotorista => getField<String>('ref_motorista');
  set refMotorista(String? value) => setField<String>('ref_motorista', value);

  String? get nomeMotorista => getField<String>('nome_motorista');
  set nomeMotorista(String? value) => setField<String>('nome_motorista', value);

  String? get enderecoSede => getField<String>('endereço_sede');
  set enderecoSede(String? value) => setField<String>('endereço_sede', value);
}
