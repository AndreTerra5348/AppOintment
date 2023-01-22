import 'package:appointment/application/common/submission_status.dart';
import 'package:appointment/domain/core/repository.dart';
import 'package:appointment/infrastructure/drift/core/pagination_service.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';

const errorMessage = "Error";

// Repository Failures
const dbErrorRepositoryFailure =
    RepositoryFailure.dbException(error: errorMessage);
const notFoundRepositoryFailure =
    RepositoryFailure.notFound(error: errorMessage);

// Submission Failures
const dbErrorSubmissionFailure =
    SubmissionFailure.repository(failure: dbErrorRepositoryFailure);

// Submission Statuses
const SubmissionStatus dbErrorSubmissionStatus = SubmissionStatus.failure(
  failure: dbErrorSubmissionFailure,
);

// Localized Messages
final dbErrorLocalizedMessage =
    AppLocalizationsEn().databaseFailure(errorMessage);

final notFoundLocalizedMessage = AppLocalizationsEn().notFoundFailure;

// Page Service Failures
const PaginationServiceFailure dbErrorPageServiceFailure =
    PaginationServiceFailure.dbException(error: errorMessage);
