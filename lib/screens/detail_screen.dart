import 'package:flutter/material.dart';
import '../models/pahlawan.dart';

class DetailScreen extends StatelessWidget {
  final Pahlawan pahlawan;

  const DetailScreen({super.key, required this.pahlawan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Header foto
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(pahlawan.nama),
              background: Container(
                color: Colors.indigo.shade300,
                child: const Center(
                  child: Icon(Icons.person, size: 80, color: Colors.white54),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Badge daerah asal
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      pahlawan.daerahAsal,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.green.shade800,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Chip lahir & wafat
                  Row(
                    children: [
                      Expanded(
                        child: _infoChip(
                            'Lahir', pahlawan.tanggalLahir, context),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: _infoChip(
                            'Wafat', pahlawan.tanggalWafat, context),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // Biografi
                  _sectionTitle('Biografi'),
                  const SizedBox(height: 6),
                  Text(
                    pahlawan.biografi,
                    style: const TextStyle(fontSize: 14, height: 1.6),
                  ),

                  const SizedBox(height: 16),

                  // Kontribusi
                  _sectionTitle('Kontribusi'),
                  const SizedBox(height: 6),
                  ...pahlawan.kontribusi.map(
                    (k) => Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 6, right: 8),
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              k,
                              style: const TextStyle(fontSize: 14, height: 1.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Galeri foto
                  _sectionTitle('Foto'),
                  const SizedBox(height: 8),
                  GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 6,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(3, (i) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.indigo.shade100,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.image,
                                color: Colors.indigo.shade300, size: 28),
                            const SizedBox(height: 4),
                            Text(
                              'Foto ${i + 1}',
                              style: TextStyle(
                                  fontSize: 10, color: Colors.indigo.shade400),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),

                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoChip(String label, String value, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style: const TextStyle(fontSize: 10, color: Colors.grey)),
          const SizedBox(height: 2),
          Text(value,
              style: const TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _sectionTitle(String title) {
    return Text(
      title.toUpperCase(),
      style: const TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        color: Colors.grey,
        letterSpacing: 0.8,
      ),
    );
  }
}