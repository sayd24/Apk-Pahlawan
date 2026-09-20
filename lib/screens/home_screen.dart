import 'package:flutter/material.dart';
import '../data/pahlawan_data.dart';
import '../models/pahlawan.dart';
import 'dashboard_screen.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';
  String _selectedCategory = 'Semua';
  bool _isGridView = false;
  final Set<String> _favoriteNames = {};

  final List<Map<String, String>> _categories = [
    {'name': 'Semua', 'icon': '🇮🇩'},
    {'name': 'Jawa', 'icon': '🏛️'},
    {'name': 'Sumatera', 'icon': '🌴'},
    {'name': 'Maluku', 'icon': '🌊'},
    {'name': 'Sulawesi', 'icon': '⛰️'},
    {'name': '⭐ Favorit', 'icon': '⭐'},
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _toggleFavorite(String name) {
    setState(() {
      if (_favoriteNames.contains(name)) {
        _favoriteNames.remove(name);
      } else {
        _favoriteNames.add(name);
      }
    });
  }

  void _resetFilters() {
    setState(() {
      _searchController.clear();
      _searchQuery = '';
      _selectedCategory = 'Semua';
    });
  }

  List<Pahlawan> get _filteredPahlawan {
    return daftarPahlawan.where((p) {
      final matchesSearch = _searchQuery.isEmpty ||
          p.nama.toLowerCase().contains(_searchQuery.toLowerCase()) ||
          p.daerahAsal.toLowerCase().contains(_searchQuery.toLowerCase()) ||
          p.julukan.toLowerCase().contains(_searchQuery.toLowerCase()) ||
          p.biografi.toLowerCase().contains(_searchQuery.toLowerCase()) ||
          p.kutipan.toLowerCase().contains(_searchQuery.toLowerCase());

      final matchesCategory = switch (_selectedCategory) {
        'Semua' => true,
        '⭐ Favorit' => _favoriteNames.contains(p.nama),
        _ => p.kategori == _selectedCategory,
      };

      return matchesSearch && matchesCategory;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final filtered = _filteredPahlawan;
    final featuredHero = daftarPahlawan.first; // Ir. Soekarno sebagai sorotan utama

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      body: CustomScrollView(
        slivers: [
          // Header Merah Marun Modern Sinematik
          SliverToBoxAdapter(
            child: _buildTopHeader(),
          ),

          // Banner "Tokoh Pilihan / Sorotan Hari Ini"
          if (_searchQuery.isEmpty && _selectedCategory == 'Semua')
            SliverToBoxAdapter(
              child: _buildFeaturedHeroCard(featuredHero),
            ),

          // Story Avatar Carousel ("Jelajah Tokoh Cepat")
          if (_searchQuery.isEmpty && _selectedCategory == 'Semua')
            SliverToBoxAdapter(
              child: _buildStoryAvatarSection(),
            ),

          // Search Bar & Filter Chips (Modern Floating Section)
          SliverToBoxAdapter(
            child: _buildSearchAndFilterSection(),
          ),

          // Toolbar Jumlah Hasil & Toggle List/Grid
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 14, 18, 6),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _selectedCategory == '⭐ Favorit'
                              ? 'Tokoh Favorit Anda'
                              : 'Daftar Tokoh Bangsa',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF0F172A),
                            letterSpacing: -0.3,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'Menampilkan ${filtered.length} dari ${daftarPahlawan.length} tokoh',
                          style: TextStyle(
                            fontSize: 11.5,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Toggle List / Grid dengan aksen modern
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: const Color(0xFFE2E8F0)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _viewToggleButton(
                          icon: Icons.view_agenda_rounded,
                          isActive: !_isGridView,
                          tooltip: 'Tampilan List',
                          onTap: () {
                            if (_isGridView) setState(() => _isGridView = false);
                          },
                        ),
                        const SizedBox(width: 2),
                        _viewToggleButton(
                          icon: Icons.grid_view_rounded,
                          isActive: _isGridView,
                          tooltip: 'Tampilan Grid',
                          onTap: () {
                            if (!_isGridView) setState(() => _isGridView = true);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Daftar Pahlawan (Dashboard)
          SliverToBoxAdapter(
            child: DashboardScreen(
              pahlawanList: filtered,
              isGridView: _isGridView,
              favoriteNames: _favoriteNames,
              onToggleFavorite: _toggleFavorite,
              onResetFilter: _resetFilters,
            ),
          ),

          const SliverToBoxAdapter(
            child: SizedBox(height: 36),
          ),
        ],
      ),
    );
  }

  Widget _buildTopHeader() {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF8B0000), // Imperial Crimson
            Color(0xFF5F0000), // Deep Burgundy
          ],
        ),
      ),
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top bar: Badge & Bendera
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.14),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.white.withValues(alpha: 0.2),
                    width: 1,
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.auto_stories_rounded,
                      size: 13,
                      color: Color(0xFFFFD700),
                    ),
                    SizedBox(width: 6),
                    Text(
                      'Ensiklopedia Sejarah RI',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.4,
                      ),
                    ),
                  ],
                ),
              ),

              // Bendera Merah Putih Modern
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.25),
                      blurRadius: 6,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(width: 20, height: 14, color: const Color(0xFFD60000)),
                      Container(width: 20, height: 14, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Label Title
          const Text(
            'WARISAN KEHORMATAN BANGSA',
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w800,
              color: Color(0xFFFFD700),
              letterSpacing: 1.6,
            ),
          ),
          const SizedBox(height: 6),

          // Title Utama
          const Text(
            'Pahlawan\nNasional Indonesia',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w900,
              color: Colors.white,
              height: 1.15,
              letterSpacing: -0.6,
            ),
          ),

          const SizedBox(height: 12),

          // Deskripsi Elegan
          const Text(
            'Menelusuri rekam jejak, keberanian, dan pengorbanan para tokoh agung perintis kemerdekaan Nusantara.',
            style: TextStyle(
              fontSize: 13.5,
              color: Colors.white70,
              height: 1.55,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedHeroCard(Pahlawan hero) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 16, 18, 10),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: const Color(0xFFD4AF37).withValues(alpha: 0.35),
            width: 1.2,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF0F172A).withValues(alpha: 0.08),
              blurRadius: 16,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Gambar latar belakang tokoh
              Image.asset(
                hero.foto,
                fit: BoxFit.cover,
                alignment: const Alignment(0, -0.2),
              ),

              // Gradien overlay gelap sinematik
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      const Color(0xFF0F172A).withValues(alpha: 0.94),
                      const Color(0xFF0F172A).withValues(alpha: 0.8),
                      Colors.transparent,
                    ],
                    stops: const [0.0, 0.55, 1.0],
                  ),
                ),
              ),

              // Konten Sorotan
              Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Badge Tokoh Pilihan
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFFD4AF37), Color(0xFFB45309)],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.workspace_premium_rounded,
                              size: 13, color: Colors.white),
                          SizedBox(width: 4),
                          Text(
                            'TOKOH SOROTAN',
                            style: TextStyle(
                              fontSize: 9.5,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              letterSpacing: 0.6,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Nama & Kutipan
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          hero.nama,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            letterSpacing: -0.3,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          hero.julukan,
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFFFD700),
                          ),
                        ),
                        const SizedBox(height: 6),
                        SizedBox(
                          width: 220,
                          child: Text(
                            '“${hero.kutipan}”',
                            style: const TextStyle(
                              fontSize: 10.5,
                              fontStyle: FontStyle.italic,
                              color: Colors.white70,
                              height: 1.4,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),

                    // Tombol Aksi "Baca Kisah"
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(pahlawan: hero),
                          ),
                        );
                      },
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Pelajari Profil',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF8B0000),
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.arrow_forward_rounded,
                              size: 13,
                              color: Color(0xFF8B0000),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStoryAvatarSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            children: [
              Text(
                'Jelajah Tokoh Bangsa',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF0F172A),
                  letterSpacing: -0.2,
                ),
              ),
              Spacer(),
              Text(
                '15 Pahlawan',
                style: TextStyle(
                  fontSize: 11,
                  color: Color(0xFF94A3B8),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 94,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            scrollDirection: Axis.horizontal,
            itemCount: daftarPahlawan.length,
            separatorBuilder: (context, index) => const SizedBox(width: 14),
            itemBuilder: (context, index) {
              final hero = daftarPahlawan[index];
              final firstName = hero.nama
                  .replaceAll('Ir. ', '')
                  .replaceAll('Drs. ', '')
                  .replaceAll('Jenderal ', '')
                  .replaceAll('Raden Ajeng ', '')
                  .replaceAll('Cut Nyak ', '')
                  .replaceAll('Ki Hajar ', '')
                  .replaceAll('Pangeran ', '')
                  .replaceAll('Kapitan ', '')
                  .replaceAll('Tuanku ', '')
                  .replaceAll('Sultan ', '')
                  .split(' ')
                  .first;

              return InkWell(
                borderRadius: BorderRadius.circular(40),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(pahlawan: hero),
                    ),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Lingkaran Foto dengan border gradien emas-merah
                    Container(
                      padding: const EdgeInsets.all(2.5),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Color(0xFF8B0000), Color(0xFFD4AF37)],
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(1.5),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: CircleAvatar(
                          radius: 28,
                          backgroundImage: AssetImage(hero.foto),
                          backgroundColor: Colors.grey.shade200,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      width: 62,
                      child: Text(
                        firstName,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 10.5,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF334155),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSearchAndFilterSection() {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 12, 18, 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Modern Floating Search Field
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: const Color(0xFFE2E8F0)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF0F172A).withValues(alpha: 0.04),
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: TextField(
              controller: _searchController,
              onChanged: (val) => setState(() => _searchQuery = val),
              decoration: InputDecoration(
                hintText: 'Cari nama tokoh, daerah, atau kutipan...',
                hintStyle: TextStyle(
                  fontSize: 12.5,
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  color: Color(0xFF8B0000),
                  size: 22,
                ),
                suffixIcon: _searchQuery.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear_rounded, size: 18),
                        onPressed: () {
                          _searchController.clear();
                          setState(() => _searchQuery = '');
                        },
                      )
                    : null,
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
              ),
            ),
          ),

          const SizedBox(height: 12),

          // Horizontal Filter Chips (Menggunakan AnimatedContainer agar tidak pernah overflow)
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: _categories.map((cat) {
                final categoryName = cat['name']!;
                final icon = cat['icon']!;
                final isSelected = _selectedCategory == categoryName;

                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedCategory = categoryName;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 180),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? const Color(0xFF8B0000)
                            : Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: isSelected
                              ? const Color(0xFF8B0000)
                              : const Color(0xFFE2E8F0),
                          width: 1,
                        ),
                        boxShadow: isSelected
                            ? [
                                BoxShadow(
                                  color: const Color(0xFF8B0000)
                                      .withValues(alpha: 0.25),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ]
                            : [
                                BoxShadow(
                                  color: const Color(0xFF0F172A)
                                      .withValues(alpha: 0.02),
                                  blurRadius: 4,
                                  offset: const Offset(0, 1),
                                ),
                              ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(icon, style: const TextStyle(fontSize: 12)),
                          const SizedBox(width: 6),
                          Text(
                            categoryName,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: isSelected
                                  ? FontWeight.w800
                                  : FontWeight.w600,
                              color: isSelected
                                  ? Colors.white
                                  : const Color(0xFF475569),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _viewToggleButton({
    required IconData icon,
    required bool isActive,
    required String tooltip,
    required VoidCallback onTap,
  }) {
    return Tooltip(
      message: tooltip,
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: isActive
                ? const Color(0xFF8B0000).withValues(alpha: 0.1)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            size: 19,
            color: isActive ? const Color(0xFF8B0000) : Colors.grey.shade400,
          ),
        ),
      ),
    );
  }
}