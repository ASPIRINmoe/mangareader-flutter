import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:tankobon/domain/hooks/spin.dart';
import 'package:tankobon/domain/repositories/login.dart';
import 'package:tankobon/l10n/l10n.dart';
import 'package:tankobon/router/router.dart';
import 'package:tankobon/widgets/common/spin_button.dart';

class SettingsView extends HookWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final logoutState = useSpin(() async {
      await loginOutRepository(context);
      await context.router.replace(const DeciderViewRoute());
    });

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: PlatformText(l10n.dashboardNavBarSettings),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Settings WIP ${context.router.current.name}'),
            SpinButton(
              spin: logoutState.isSpinning,
              onClick: logoutState.run,
              child: PlatformText('logout'),
            ),
          ],
        ),
      ),
    );
  }
}
