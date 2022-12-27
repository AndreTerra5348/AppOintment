import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/common/type_converters.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("UidConverver", () {
    test("fromSql", () {
      final sut = UidConverter();
      final actual = sut.fromSql(1);
      expect(actual, isA<Uid>());
      expect(actual.isValid, isTrue);
    });
    test("toSql", () {
      const id = 1;
      final sut = UidConverter();
      final actual = sut.toSql(Uid.fromInt(id));
      expect(actual, isA<int>());
      expect(actual, id);
    });
  });

  group("NameConverter", () {
    test("fromSql", () {
      final sut = NameConverter();
      final actual = sut.fromSql("name");
      expect(actual, isA<Name>());
      expect(actual.isValid, isTrue);
    });
    test("toSql", () {
      const name = "name";
      final sut = NameConverter();
      final actual = sut.toSql(Name(name));
      expect(actual, isA<String>());
      expect(actual, name);
    });
  });
}
