import '../database.dart';

class ClientesTable extends SupabaseTable<ClientesRow> {
  @override
  String get tableName => 'clientes';

  @override
  ClientesRow createRow(Map<String, dynamic> data) => ClientesRow(data);
}

class ClientesRow extends SupabaseDataRow {
  ClientesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ClientesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get refCliente => getField<String>('ref_cliente');
  set refCliente(String? value) => setField<String>('ref_cliente', value);

  String? get nomeCliente => getField<String>('nome_cliente');
  set nomeCliente(String? value) => setField<String>('nome_cliente', value);

  String? get cidadeCliente => getField<String>('cidade_cliente');
  set cidadeCliente(String? value) => setField<String>('cidade_cliente', value);

  String? get estadoCliente => getField<String>('estado_cliente');
  set estadoCliente(String? value) => setField<String>('estado_cliente', value);

  String? get enderecoCliente => getField<String>('endereço_cliente');
  set enderecoCliente(String? value) =>
      setField<String>('endereço_cliente', value);
}
