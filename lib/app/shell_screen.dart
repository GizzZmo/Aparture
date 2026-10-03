import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../l10n/app_strings.dart';

class ApertureShell extends StatelessWidget {
  const ApertureShell({required this.child, super.key});

  final Widget child;

  static const _routes = ['/files', '/view', '/ai'];

  @override
  Widget build(BuildContext context) {
    final strings = AppStrings.of(context);
    final location = GoRouterState.of(context).uri.path;
    final selectedIndex = _routes.indexOf(location).clamp(0, _routes.length - 1);

    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) => context.go(_routes[index]),
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.folder_outlined),
            label: strings.files,
          ),
          NavigationDestination(
            icon: const Icon(Icons.public),
            label: strings.view,
          ),
          NavigationDestination(
            icon: const Icon(Icons.auto_awesome_outlined),
            label: strings.ai,
          ),
        ],
      ),
    );
  }
}
