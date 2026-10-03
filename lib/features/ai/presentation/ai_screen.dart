import 'package:flutter/material.dart';

import '../../../l10n/app_strings.dart';

class AiScreen extends StatelessWidget {
  const AiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.of(context).ai)),
      body: Center(child: Text(AppStrings.of(context).aiPlaceholder)),
    );
  }
}
