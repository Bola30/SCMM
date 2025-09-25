import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smcc_app/Features/social/presentation/pages/home_page.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int _selectedIndex = 0;

  // 👇 الصفحات
  final List<Widget> _pages = const [
    HomePage(),
    Center(child: Text("🔍 البحث", style: TextStyle(fontSize: 24))),
    Center(child: Text("🛒 الفئات", style: TextStyle(fontSize: 24))),
    Center(child: Text("👤 حسابي", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 8,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedItemColor: const Color(0xFF1C77FD),
          unselectedItemColor: Colors.grey,

          // 👇 إظهار العناوين
          showSelectedLabels: true,
          showUnselectedLabels: true,

             items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: "الرئيسية",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_grid_2x2_fill),
            label: "الفئات",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart_fill),
            label: "العربة",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_fill), 
            label: "حسابك",
          ),
        ],
        ),
      ),
    );
  }
}
