sealed class ApiResponse {}

class Success<T> extends ApiResponse {
  final T data;

  Success(this.data);
}

class Error<T> extends ApiResponse {
  final String message;

  Error(this.message);
}
