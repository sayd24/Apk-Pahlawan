import 'package:flutter/material.dart';
import '../data/pahlawan_data.dart';
import 'detail_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: daftarPahlawan.length,
      itemBuilder: (context, index) {
        final pahlawan = daftarPahlawan[index];
        return Container(
          color: Colors.white,
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 22,
                  backgroundColor: _avatarColor(index),
                  child: Text(
                    _initials(pahlawan.nama),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                title: Text(
                  pahlawan.nama,
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w500),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(pahlawan.daerahAsal,
                        style: const TextStyle(fontSize: 11)),
                    Text(
                      '${pahlawan.tanggalLahir} – ${pahlawan.tanggalWafat}',
                      style: const TextStyle(
                          fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
                trailing: const Icon(Icons.chevron_right,
                    color: Colors.grey),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailScreen(pahlawan: pahlawan),
                    ),
                  );
                },
              ),
              const Divider(height: 0.5, indent: 70),
            ],
          ),
        );
      },
    );
  }

  String _initials(String nama) {
    final words = nama.split(' ');
    if (words.length >= 2) {
      return '${words[0][0]}${words[1][0]}'.toUpperCase();
    }
    return nama.substring(0, 2).toUpperCase();
  }

  Color _avatarColor(int index) {
    final colors = [
      const Color(0xFF8B0000),
      const Color(0xFF1a3a6b),
      const Color(0xFF5c3a1e),
      const Color(0xFF2d5a1e),
      const Color(0xFF4a1a5c),
      const Color(0xFF1a4a4a),
      const Color(0xFF6b3a1a),
      const Color(0xFF1a5c3a),
    ];
    return colors[index % colors.length];
  }
}