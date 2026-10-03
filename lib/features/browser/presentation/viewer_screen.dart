import 'package:flutter/material.dart';

import '../../../l10n/app_strings.dart';

class ViewerScreen extends StatelessWidget {
  const ViewerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.of(context).view)),
      body: Center(child: Text(AppStrings.of(context).viewPlaceholder)),
    );
  }
}
