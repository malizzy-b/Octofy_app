import '../database.dart';

class CardsTable extends SupabaseTable<CardsRow> {
  @override
  String get tableName => 'cards';

  @override
  CardsRow createRow(Map<String, dynamic> data) => CardsRow(data);
}

class CardsRow extends SupabaseDataRow {
  CardsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CardsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);
}
