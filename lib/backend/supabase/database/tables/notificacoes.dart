import '../database.dart';

class NotificacoesTable extends SupabaseTable<NotificacoesRow> {
  @override
  String get tableName => 'notificacoes';

  @override
  NotificacoesRow createRow(Map<String, dynamic> data) => NotificacoesRow(data);
}

class NotificacoesRow extends SupabaseDataRow {
  NotificacoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificacoesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  String? get descricao => getField<String>('descrição');
  set descricao(String? value) => setField<String>('descrição', value);

  DateTime? get horario => getField<DateTime>('horario');
  set horario(DateTime? value) => setField<DateTime>('horario', value);

  bool? get lido => getField<bool>('lido');
  set lido(bool? value) => setField<bool>('lido', value);

  dynamic get icone => getField<dynamic>('icone');
  set icone(dynamic value) => setField<dynamic>('icone', value);

  int? get idEntrega => getField<int>('id_entrega');
  set idEntrega(int? value) => setField<int>('id_entrega', value);
}
