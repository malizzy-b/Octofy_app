import '../database.dart';

class StatementsTable extends SupabaseTable<StatementsRow> {
  @override
  String get tableName => 'statements';

  @override
  StatementsRow createRow(Map<String, dynamic> data) => StatementsRow(data);
}

class StatementsRow extends SupabaseDataRow {
  StatementsRow(super.data);

  @override
  SupabaseTable get table => StatementsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  DateTime? get dataField => getField<DateTime>('data');
  set dataField(DateTime? value) => setField<DateTime>('data', value);

  String? get detalhes => getField<String>('detalhes');
  set detalhes(String? value) => setField<String>('detalhes', value);

  int? get valor => getField<int>('valor');
  set valor(int? value) => setField<int>('valor', value);

  int? get cardId => getField<int>('card_id');
  set cardId(int? value) => setField<int>('card_id', value);

  String? get categoria => getField<String>('categoria');
  set categoria(String? value) => setField<String>('categoria', value);
}
