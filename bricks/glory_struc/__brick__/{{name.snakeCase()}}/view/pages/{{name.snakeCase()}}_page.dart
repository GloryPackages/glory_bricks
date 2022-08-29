import 'package:flutter/material.dart';

class {{#pascalCase}}{{name}}Page {{/pascalCase}}  extends StatelessWidget {
 const {{#pascalCase}}{{name}}Page{{/pascalCase}} ({super.key});

 @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeCubit>(
      create: (_) => injector<HomeCubit>()..fetch(),
      child: const HomeBody(),
    );
  }
}