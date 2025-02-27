import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        border: Border(
          bottom: BorderSide(
            color: const Color(0xFFd8dde2),
            width: 1.0,
          ),
        ),
      ),
      child: AppBar(
        actions: [
          Center(
            child: IconButton(
              focusColor: Colors.transparent,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onPressed: () {},
              icon: const Icon(
                color: Color(0xFF1A1A23),
                Icons.add_circle
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        leadingWidth: 50,
        leading: Center(
          child: IconButton(
            focusColor: Colors.transparent,
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onPressed: () {},
            icon: Stack(
              alignment: Alignment.bottomRight,
              children: [
                const Icon(
                  color: Color(0xFF1A1A23),
                  Icons.person
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF59AB87),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        title: const Text(
          'Chats',
          style: TextStyle(fontSize: 20, color: Color(0xFF1A1A23), fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}