import 'package:appointment/application/common/form.dart';
import 'package:appointment/domain/core/i_repository.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';

const dbErrorMessage = "Error";
const dbErrorRepositoryFailure =
    RepositoryFailure.dbException(error: dbErrorMessage);
const dbErrorSubmissionFailure =
    SubmissionFailure.repository(failure: dbErrorRepositoryFailure);
const SubmissionStatus dbErrorSubmissionStatus = SubmissionStatus.failure(
  failure: dbErrorSubmissionFailure,
);

final dbErrorLocalizedMessage =
    AppLocalizationsEn().databaseFailure(dbErrorMessage);
