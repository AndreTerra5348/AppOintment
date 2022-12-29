/// Defines [HomePage]
import 'package:appointment/presentation/common/build_context_extensions.dart';
import 'package:appointment/presentation/config/di_config.dart';
import 'package:appointment/presentation/config/route_config.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// Displays buttons to navigato through the app
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
                  child: _buildButtons(context),
                ),
              ],
            ),
          ),
          _buildBanner(context),
          FutureBuilder(
            future: getIt.getAsync<PackageInfo>(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return _buildVersionLabel(snapshot.data?.version ?? "");
              }
              return Container();
            },
          ),
        ],
      ),
      appBar: AppBar(title: Text(context.tr.appointmentTitle)),
    );
  }

  /// Displays the application build name
  Align _buildVersionLabel(String version) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(version),
      ),
    );
  }

  /// Displays the buttons to navigate through the app
  IntrinsicWidth _buildButtons(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 8),
          _buildRegisterButton(context),
          const SizedBox(height: 8),
          _buildSearchButton(context),
        ],
      ),
    );
  }

  /// Displays the button to navigate to [ClientRegisterPage]
  ElevatedButton _buildRegisterButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.router.pushClientRegisterPage(),
      child: Text(context.tr.pageClientRegisterTitle),
    );
  }

  /// Displays the button to navigate to [ClientSearchPage]
  ElevatedButton _buildSearchButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.router.pushClientSearchPage(),
      child: Text(context.tr.pageClientSearchTitle),
    );
  }

  /// Displays a banner to indicate that the app is in debug mode
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
