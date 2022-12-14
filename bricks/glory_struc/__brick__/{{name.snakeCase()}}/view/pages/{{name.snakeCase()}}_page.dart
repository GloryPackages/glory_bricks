import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/cubit/checkout_cubit.dart';

class {{name.pascalCase()}}Page  extends StatelessWidget {
 const {{name.pascalCase()}}Page ({super.key});

 @override
  Widget build(BuildContext context) {
    return BlocProvider<{{name.pascalCase()}}Cubit>(
      create: (_) => injector<{{name.pascalCase()}}Cubit>()..get(),
      child: const {{name.pascalCase()}}View(),
    );
  }
}
class {{name.pascalCase()}}View extends StatelessWidget {
  const {{name.pascalCase()}}View({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
