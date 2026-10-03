import 'package:go_router/go_router.dart';

import '../features/ai/presentation/ai_screen.dart';
import '../features/browser/presentation/viewer_screen.dart';
import '../features/files/presentation/files_screen.dart';
import 'shell_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/files',
  routes: [
    ShellRoute(
      builder: (context, state, child) => ApertureShell(child: child),
      routes: [
        GoRoute(
          path: '/files',
          builder: (context, state) => const FilesScreen(),
        ),
        GoRoute(
          path: '/view',
          builder: (context, state) => const ViewerScreen(),
        ),
        GoRoute(
          path: '/ai',
          builder: (context, state) => const AiScreen(),
        ),
      ],
    ),
  ],
);
