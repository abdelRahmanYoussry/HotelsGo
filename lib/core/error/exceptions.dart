class ServerException implements Exception {
  final String errorMassage;

  const ServerException({required this.errorMassage});
}

class LocalDatabaseException implements Exception {
  final String errorMassage;
  const LocalDatabaseException({required this.errorMassage});
}

class ServerError implements Exception {
  final String errorMessageModel;

  const ServerError({required this.errorMessageModel});
}
