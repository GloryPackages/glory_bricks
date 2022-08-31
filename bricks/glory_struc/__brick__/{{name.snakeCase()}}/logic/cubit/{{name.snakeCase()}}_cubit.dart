import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geeks_service/service/response_status.dart';

import '../repository/{{name.snakeCase()}}_repo.dart';
import '../../../../../core/services/network/fails_method.dart';



part '{{name.snakeCase()}}_state.dart';

class {{name.pascalCase()}}Cubit extends Cubit<{{name.pascalCase()}}State> {
  {{name.pascalCase()}}Cubit(this.repo) : super(const {{name.pascalCase()}}State());
  final {{name.pascalCase()}}Repo repo;

  void fetch() async {
    emit(state.copyWith(status: const ResponseStatus.loading()));

    final response = await repo.get{{name.pascalCase()}}();
    response.fold(
      (failure) => fail(failure, (data) => emit(data), const {{name.pascalCase()}}State()),
      (success) => emit(state.copyWith(
        status: const ResponseStatus.success(),
      )),
    );
  }
}
