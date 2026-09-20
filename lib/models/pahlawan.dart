class Pahlawan {
  final String nama;
  final String daerahAsal;
  final String tanggalLahir;
  final String tanggalWafat;
  final String biografi;
  final List<String> kontribusi;
  final String foto;
  final String julukan;
  final String kategori;
  final String kutipan;
  final String periode;

  const Pahlawan({
    required this.nama,
    required this.daerahAsal,
    required this.tanggalLahir,
    required this.tanggalWafat,
    required this.biografi,
    required this.kontribusi,
    required this.foto,
    this.julukan = '',
    this.kategori = 'Lainnya',
    this.kutipan = '',
    this.periode = 'Kemerdekaan',
  });
}