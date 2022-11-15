import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/core/i_page_service.dart';
import 'package:appointment/infrastructure/drift/db.dart';

class ClientPageService
    extends BasePageService<Client, ClientModels, ClientModel> {
  ClientPageService(super.dao, super.converter);
}
