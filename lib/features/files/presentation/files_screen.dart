import 'package:flutter/material.dart';

import '../../../l10n/app_strings.dart';

class FilesScreen extends StatelessWidget {
  const FilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.of(context).files)),
      body: Center(child: Text(AppStrings.of(context).filesPlaceholder)),
    );
  }
}
