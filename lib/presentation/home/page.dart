import 'package:appointment/presentation/common/build_context_extensions.dart';
import 'package:appointment/presentation/config/route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 32),
                Expanded(
                  flex: 1,
                  child: Text(
                    textAlign: TextAlign.center,
                    context.tr.appointmentSubtitle,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: IntrinsicWidth(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () =>
                              context.router.pushClientRegisterPage(),
                          child: Text(context.tr.pageClientRegisterTitle),
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          onPressed: () =>
                              context.router.pushClientSearchPage(),
                          child: Text(context.tr.pageClientSearchTitle),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          _buildBanner(context),
        ],
      ),
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
