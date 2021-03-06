import 'dart:io';
import 'dart:convert';

import 'json_schema_parser.dart';

Future<void> main() async {
  var className = 'MainClass';
  var schema = await File('./bin/assets/schema.json').readAsStringSync();

  var result = JsonSchemaParser().getClasses(
    className: className,
    models: JsonSchemaParser.getModels(
      schema: json.decode(schema),
    ),
  );

  for (var item in result) {
    print('$item \n');
  }
}
