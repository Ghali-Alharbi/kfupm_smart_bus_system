import 'package:flutter/material.dart';





class BottomBar extends StatelessWidget {

  BottomBar({super.key});


Widget _buildIconButton(IconData icon, VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    child: Icon(
      icon,
      size: 32,
      color: Colors.white,
    ),
  );
}


  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF179C3D),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            _buildIconButton(Icons.directions_bus, () {
              print("Profile tapped");
            }),
            const Spacer(),
            _buildIconButton(Icons.home, () {
              print("home");
            }),
            const Spacer(),
            _buildIconButton(Icons.logout, () {
              print("Call tapped");
            }),
          ],
        ),
      ),
    );
  }
}