import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBottomNavigation extends StatelessWidget {
  final int pageIndex;
  const CustomBottomNavigation({super.key, required this.pageIndex});

  void onItemTapped(BuildContext context, int pageIndex) {
    switch (pageIndex) {
      case 0:
        return context.go('/home/:0');
      case 1:
        return context.go('/home/:1');
      case 2:
        return context.go('/home/:2');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: pageIndex,
      elevation: 0,
      onTap: (value) => onItemTapped(context, value),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_max),
          label: 'Inicio',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.label_outlined), label: 'Categorias'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline), label: 'Favoritos'),
      ],
    );
  }
}
