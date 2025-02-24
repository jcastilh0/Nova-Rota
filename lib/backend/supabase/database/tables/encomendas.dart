import '../database.dart';

class EncomendasTable extends SupabaseTable<EncomendasRow> {
  @override
  String get tableName => 'encomendas';

  @override
  EncomendasRow createRow(Map<String, dynamic> data) => EncomendasRow(data);
}

class EncomendasRow extends SupabaseDataRow {
  EncomendasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EncomendasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get codEncomenda => getField<String>('cod_encomenda');
  set codEncomenda(String? value) => setField<String>('cod_encomenda', value);

  int? get idEncomCli => getField<int>('id_encom_cli');
  set idEncomCli(int? value) => setField<int>('id_encom_cli', value);

  DateTime? get dataPedidoPreparando =>
      getField<DateTime>('data_pedido_preparando');
  set dataPedidoPreparando(DateTime? value) =>
      setField<DateTime>('data_pedido_preparando', value);

  int? get avaliacao => getField<int>('avaliacao');
  set avaliacao(int? value) => setField<int>('avaliacao', value);

  int? get idEncomEntrega => getField<int>('id-encom_entrega');
  set idEncomEntrega(int? value) => setField<int>('id-encom_entrega', value);
}
