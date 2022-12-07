import 'package:appointment/presentation/common/build_context_extensions.dart';
import 'package:appointment/presentation/home/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // TODO: add debug banner to bottom right corner
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      body: Container(),
      appBar: AppBar(title: Text(context.tr.appointment)),
    );
  }
}
