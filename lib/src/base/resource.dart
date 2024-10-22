import 'package:getx_template/src/base/appexception.dart';

enum Status { INITIALIZE, LOADING, SUCCESS, ERROR, EMPTY }

class Resource<T> {
  final Status status;
  final T? data;
  final AppException? error;

  Resource._default({required this.status, this.data, this.error});

  Resource.success(this.data)
      : this.status = Status.SUCCESS,
        this.error = null;

  Resource.initialize({this.data})
      : this.status = Status.INITIALIZE,
        this.error = null;

  Resource.error(this.error, {this.data})
      : this.status = Status.ERROR;

  Resource.loading({this.data})
      : this.status = Status.LOADING,
        this.error = null;

  Resource.empty(this.data)
      : this.status = Status.EMPTY,
        this.error = null;

  @override
  String toString() {
    return 'Resource{status: $status, error: $error}';
  }

  Resource<T> copyWith({Status? status, T? data, AppException? error}) {
    return Resource._default(
      status: status ?? this.status,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }
}
