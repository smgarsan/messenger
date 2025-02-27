import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color(0xFFD8DDE2),
            width: 1,
          ),
        ),
      ),
      child: BottomAppBar(
        color: const Color(0xFFFFFFFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => _onItemTapped(0),
                behavior: HitTestBehavior.translucent,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        _selectedIndex == 0 ? Icons.forum : Icons.forum_outlined,
                        size: 22,
                        color: _selectedIndex == 0
                            ? const Color(0xFF1A1A23)
                            : const Color(0xFF647078),
                      ),
                      Text(
                        'Chats',
                        style: TextStyle(
                          fontSize: 12,
                          color: _selectedIndex == 0
                              ? const Color(0xFF1A1A23)
                              : const Color(0xFF647078),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => _onItemTapped(1),
                behavior: HitTestBehavior.translucent,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        _selectedIndex == 1 ? Icons.groups : Icons.groups_outlined,
                        size: 22,
                        color: _selectedIndex == 1
                            ? const Color(0xFF1A1A23)
                            : const Color(0xFF647078),
                      ),
                      Text(
                        'Grupos',
                        style: TextStyle(
                          fontSize: 12,
                          color: _selectedIndex == 1
                              ? const Color(0xFF1A1A23)
                              : const Color(0xFF647078),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
