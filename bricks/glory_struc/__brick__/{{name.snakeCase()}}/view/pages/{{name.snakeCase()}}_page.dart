import 'package:flutter/material.dart';

class {{#pascalCase}}{{name}}Page {{/pascalCase}}  extends StatelessWidget {
 const {{#pascalCase}}{{name}}Page{{/pascalCase}} ({super.key});

 @override
  Widget build(BuildContext context) {
    return BlocProvider<{{name.pascalCase()}}Cubit>(
      create: (_) => injector<{{name.pascalCase()}}Cubit>()..get(),
      child: const HomeBody(),
    );
  }
}
