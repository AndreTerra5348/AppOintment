import 'package:appointment/presentation/common/build_context_extensions.dart';
import 'package:appointment/presentation/config/route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text(context.tr.homeDrawerTitle),
          ),
          ListTile(
            leading: const Icon(Icons.person_add),
            title: Text(context.tr.homeDrawerClientRegister),
            onTap: context.router.pushClientRegisterPage,
          ),
          ListTile(
            leading: const Icon(Icons.search),
            title: Text(context.tr.homeDrawerClientSearch),
            onTap: context.router.pushClientSearchPage,
          ),
        ],
      ),
    );
  }
}
