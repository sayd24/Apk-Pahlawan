import 'package:flutter/material.dart';
import 'dashboard_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              color: const Color(0xFF8B0000),
              padding: const EdgeInsets.fromLTRB(20, 52, 20, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          'Ensiklopedia',
                          style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFFFFDDDD),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      // Bendera merah putih
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 13,
                            decoration: const BoxDecoration(
                              color: Color(0xFFCC0001),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(2),
                                bottomLeft: Radius.circular(2),
                              ),
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 13,
                            decoration: const BoxDecoration(
                              color: Color(0xFFF5F5F5),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(2),
                                bottomRight: Radius.circular(2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Label
                  const Text(
                    'APLIKASI EDUKASI',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white54,
                      letterSpacing: 1.2,
                    ),
                  ),

                  const SizedBox(height: 6),

                  // Judul
                  const Text(
                    'Pahlawan\nNasional\nIndonesia',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),

                  const SizedBox(height: 14),

                  // Deskripsi
                  const Text(
                    'Mengenal para pejuang bangsa yang telah memberikan segalanya demi kemerdekaan Indonesia.',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white70,
                      height: 1.6,
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Quote
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      border: const Border(
                        left: BorderSide(
                            color: Colors.white38, width: 2),
                      ),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '"Bangsa yang besar adalah bangsa yang menghormati jasa pahlawannya."',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white70,
                            fontStyle: FontStyle.italic,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '— Ir. Soekarno',
                          style: TextStyle(
                              fontSize: 11, color: Colors.white38),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Kotak fitur
                  Row(
                    children: [
                      _featureBox(Icons.menu_book_outlined, 'Biografi'),
                      const SizedBox(width: 8),
                      _featureBox(Icons.military_tech_outlined, 'Jasa'),
                      const SizedBox(width: 8),
                      _featureBox(Icons.photo_library_outlined, 'Galeri'),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // Scroll hint
                  const Center(
                    child: Column(
                      children: [
                        Icon(Icons.keyboard_arrow_down,
                            color: Colors.white24, size: 20),
                        Text(
                          'gulir untuk melihat daftar',
                          style: TextStyle(
                              fontSize: 10, color: Colors.white24),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Header list
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Daftar pahlawan',
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    '15 tokoh',
                    style: TextStyle(
                        fontSize: 12, color: Colors.grey.shade400),
                  ),
                ],
              ),
            ),
          ),

          // List pahlawan
          SliverToBoxAdapter(
            child: _PahlawanList(),
          ),
        ],
      ),
    );
  }

  Widget _featureBox(IconData icon, String label) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.12),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Icon(icon, color: Colors.white70, size: 22),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(
                  fontSize: 11,
                  color: Colors.white70,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

class _PahlawanList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DashboardScreen();
  }
}