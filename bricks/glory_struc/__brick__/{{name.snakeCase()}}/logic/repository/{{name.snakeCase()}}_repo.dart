import 'package:dartz/dartz.dart';
import 'package:dots/core/services/network/network_service.dart';
import 'package:geeks_service/geeks_service.dart';

import '../model/{{name.snakeCase()}}_model.dart';

abstract class {{name.pascalCase()}}Repo{
  Future<Either<Failure, {{name.pascalCase()}}Model>> get{{name.pascalCase()}}();

}

class {{name.pascalCase()}}RepoImpl extends {{name.pascalCase()}}Repo  {
 {{name.pascalCase()}}RepoImpl  (this.network);
  final NetworkService network;

  @override
  Future<Either<Failure, {{name.pascalCase()}}Model >> get{{name.pascalCase()}} () async {
    try {

      final response = await network.get(url, hasToken: true);

      return Right({{name.pascalCase()}}Model.fromJson(response.data));
    } on DioError catch (e) {
      return Left(Failure.fromCode(e));
    }
  }

}
