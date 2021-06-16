class Response {
  final int multicastId;
  final int success;
  final int failure;
  final int canonicalIds;
  final List<ResponseResult> results;

  Response({
    required this.multicastId,
    required this.success,
    required this.failure,
    required this.canonicalIds,
    required this.results,
  });
}

class ResponseResult {
  final String error;

  ResponseResult({required this.error});
}
