import '../database.dart';

class ViewEntregasEncomendasTable
    extends SupabaseTable<ViewEntregasEncomendasRow> {
  @override
  String get tableName => 'view_entregas_encomendas';

  @override
  ViewEntregasEncomendasRow createRow(Map<String, dynamic> data) =>
      ViewEntregasEncomendasRow(data);
}

class ViewEntregasEncomendasRow extends SupabaseDataRow {
  ViewEntregasEncomendasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewEntregasEncomendasTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get codPedido => getField<String>('cod_pedido');
  set codPedido(String? value) => setField<String>('cod_pedido', value);

  String? get endereco => getField<String>('endereço');
  set endereco(String? value) => setField<String>('endereço', value);

  DateTime? get dataIsEntregue => getField<DateTime>('dataIsEntregue');
  set dataIsEntregue(DateTime? value) =>
      setField<DateTime>('dataIsEntregue', value);

  int? get avaliacao => getField<int>('avaliacao');
  set avaliacao(int? value) => setField<int>('avaliacao', value);
}
