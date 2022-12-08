import 'package:appointment/presentation/common/build_context_extensions.dart';
import 'package:appointment/presentation/home/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      body: Stack(children: [
        _buildBanner(context),
      ]),
      appBar: AppBar(title: Text(context.tr.appointmentTitle)),
    );
  }

  _buildBanner(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomRight,
      child: Banner(
        message: "Debug",
        location: BannerLocation.bottomStart,
        layoutDirection: TextDirection.rtl,
      ),
    );
  }
}
