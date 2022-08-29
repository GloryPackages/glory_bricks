part of '{{name.snakeCase()}}_cubit.dart';

class {{name.pascalCase()}}State extends Equatable {
  const {{name.pascalCase()}}State({
    this.status = const ResponseStatus.loading(),
    this.message,
  });

  final ResponseStatus status;
  final String? message;


  {{name.pascalCase()}}State copyWith({
    ResponseStatus? status,
    String? message,
  
  }) {
    return {{name.pascalCase()}}State(
      status: status ?? this.status,
      message: message ?? this.message,
     
    );
  }

  @override
  List<Object?> get props => [message,status];
}
