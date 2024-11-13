import '../database.dart';

class UserTable extends SupabaseTable<UserRow> {
  @override
  String get tableName => 'user';

  @override
  UserRow createRow(Map<String, dynamic> data) => UserRow(data);
}

class UserRow extends SupabaseDataRow {
  UserRow(super.data);

  @override
  SupabaseTable get table => UserTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get cpf => getField<int>('CPF');
  set cpf(int? value) => setField<int>('CPF', value);

  DateTime? get dataNasc => getField<DateTime>('data_nasc');
  set dataNasc(DateTime? value) => setField<DateTime>('data_nasc', value);

  int? get genero => getField<int>('genero');
  set genero(int? value) => setField<int>('genero', value);

  int? get telefone => getField<int>('telefone');
  set telefone(int? value) => setField<int>('telefone', value);

  int? get senha => getField<int>('senha');
  set senha(int? value) => setField<int>('senha', value);

  int? get saldoAtual => getField<int>('saldo_atual');
  set saldoAtual(int? value) => setField<int>('saldo_atual', value);

  String? get perfil1 => getField<String>('perfil_1');
  set perfil1(String? value) => setField<String>('perfil_1', value);

  String? get perfil2 => getField<String>('perfil_2');
  set perfil2(String? value) => setField<String>('perfil_2', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);
}
