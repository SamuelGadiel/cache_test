import 'package:cached_query/cached_query.dart';

Future<String> getTableMetadata(String id) async {
  final query = Query<String>(
    key: 'id-$id',
    config: QueryConfig(
      
    ),
    queryFn: () async {
      await Future.delayed(Duration(seconds: 10));

      return '--- Valor ---';
    },
  );

  final response = (await query.result).data ?? '';

  return response;
}

Future<void> run() async {
  print('começou');

  final data = await getTableMetadata('1');
  print('pegou o dado 1');

  print(data);

  print('começou o 2');
  final data2 = await getTableMetadata('1');

  print('pegou o dado 2');
  print(data2);
}
