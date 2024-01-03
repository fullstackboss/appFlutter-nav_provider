import 'package:app_provider_nav/components/appbar.dart';
import 'package:app_provider_nav/page/detalle.dart';
import 'package:app_provider_nav/page/listado.dart';
import 'package:app_provider_nav/page/setting.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({
    super.key,
  });

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int _selectedIndex = 0;

  final _listaPaginas = <Widget>[
    const PageListado(),
    const PageDetalle(),
    const PageSetting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: const AppBarra(),
        body: _listaPaginas[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int element) {
            setState(() {
              _selectedIndex = element;
            });
          },
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined),
              label: 'Listado',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.build_circle_outlined),
              label: 'Detalle',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ),
      ),
    );
  }
}
