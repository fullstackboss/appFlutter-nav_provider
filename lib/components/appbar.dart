import 'package:flutter/material.dart';

class AppBarra extends StatelessWidget implements PreferredSizeWidget {
  const AppBarra({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('App Bar'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
