import '../database.dart';

class EntregasTable extends SupabaseTable<EntregasRow> {
  @override
  String get tableName => 'entregas';

  @override
  EntregasRow createRow(Map<String, dynamic> data) => EntregasRow(data);
}

class EntregasRow extends SupabaseDataRow {
  EntregasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EntregasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get codRastreio => getField<String>('cod_rastreio');
  set codRastreio(String? value) => setField<String>('cod_rastreio', value);

  String? get origem => getField<String>('origem');
  set origem(String? value) => setField<String>('origem', value);

  String? get destino => getField<String>('destino');
  set destino(String? value) => setField<String>('destino', value);

  String? get idCli => getField<String>('id_cli');
  set idCli(String? value) => setField<String>('id_cli', value);

  bool? get isEmPreparo => getField<bool>('isEmPreparo');
  set isEmPreparo(bool? value) => setField<bool>('isEmPreparo', value);

  DateTime? get dataIsEmPreparo => getField<DateTime>('dataIsEmPreparo');
  set dataIsEmPreparo(DateTime? value) =>
      setField<DateTime>('dataIsEmPreparo', value);

  bool? get isEmRota => getField<bool>('isEmRota');
  set isEmRota(bool? value) => setField<bool>('isEmRota', value);

  DateTime? get dataIsEmRota => getField<DateTime>('dataIsEmRota');
  set dataIsEmRota(DateTime? value) =>
      setField<DateTime>('dataIsEmRota', value);

  bool? get isEntregue => getField<bool>('isEntregue');
  set isEntregue(bool? value) => setField<bool>('isEntregue', value);

  DateTime? get dataIsEntregue => getField<DateTime>('dataIsEntregue');
  set dataIsEntregue(DateTime? value) =>
      setField<DateTime>('dataIsEntregue', value);

  int? get idEncomEntrega => getField<int>('id_encom_entrega');
  set idEncomEntrega(int? value) => setField<int>('id_encom_entrega', value);

  String? get endereco => getField<String>('endereço');
  set endereco(String? value) => setField<String>('endereço', value);

  String? get codPedido => getField<String>('cod_pedido');
  set codPedido(String? value) => setField<String>('cod_pedido', value);

  String? get refMotorista => getField<String>('ref_motorista');
  set refMotorista(String? value) => setField<String>('ref_motorista', value);

  String? get statusEncomenda => getField<String>('status_encomenda');
  set statusEncomenda(String? value) =>
      setField<String>('status_encomenda', value);

  int? get avaliacaoEntrega => getField<int>('avaliacao_entrega');
  set avaliacaoEntrega(int? value) => setField<int>('avaliacao_entrega', value);
}
