import '../models/pahlawan.dart';

final List<Pahlawan> daftarPahlawan = [
  const Pahlawan(
    nama: 'Ir. Soekarno',
    daerahAsal: 'Surabaya, Jawa Timur',
    tanggalLahir: '6 Juni 1901',
    tanggalWafat: '21 Juni 1970',
    julukan: 'Bapak Proklamator & Presiden Pertama RI',
    kategori: 'Jawa',
    periode: 'Revolusi Kemerdekaan',
    kutipan:
        'Beri aku 1.000 orang tua, niscaya akan kucabut Semeru dari akarnya. Beri aku 10 pemuda, niscaya akan kuguncangkan dunia.',
    biografi:
        'Proklamator kemerdekaan dan Presiden pertama Republik Indonesia. Ia merupakan tokoh penting yang merumuskan Pancasila dan memimpin perjuangan diplomatik maupun politik melawan penjajahan Belanda. Kepemimpinannya yang karismatik berhasil menyatukan berbagai golongan masyarakat demi mempertahankan kedaulatan negara yang baru berdiri.',
    kontribusi: [
      'Membacakan Teks Proklamasi Kemerdekaan RI pada 17 Agustus 1945.',
      'Merumuskan dasar negara Pancasila pada sidang BPUPKI.',
      'Menggagas Konferensi Asia-Afrika tahun 1955.',
    ],
    foto: 'assets/images/pahlawan/soekarno.jpg',
  ),
  const Pahlawan(
    nama: 'Drs. Mohammad Hatta',
    daerahAsal: 'Bukittinggi, Sumatera Barat',
    tanggalLahir: '12 Agustus 1902',
    tanggalWafat: '14 Maret 1980',
    julukan: 'Bapak Proklamator & Bapak Koperasi',
    kategori: 'Sumatera',
    periode: 'Diplomasi & Pembangunan',
    kutipan:
        'Kurang cerdas dapat diperbaiki dengan belajar, kurang cakap dapat dihilangkan dengan pengalaman. Namun tidak jujur itu sulit diperbaiki.',
    biografi:
        'Wakil Presiden pertama RI yang dikenal sebagai Bapak Koperasi Indonesia. Ia adalah pemikir, ekonom, dan diplomat ulung yang mendampingi Soekarno dalam memproklamasikan kemerdekaan. Perjuangannya di kancah internasional mencapai puncaknya saat ia berhasil memimpin delegasi Indonesia dalam Konferensi Meja Bundar.',
    kontribusi: [
      'Bapak Proklamator kemerdekaan RI bersama Soekarno.',
      'Memimpin delegasi Indonesia di Konferensi Meja Bundar (KMB) di Den Haag.',
      'Merintis dan meletakkan dasar sistem perkoperasian di Indonesia.',
    ],
    foto: 'assets/images/pahlawan/mohammad_hatta.jpg',
  ),
  const Pahlawan(
    nama: 'Jenderal Soedirman',
    daerahAsal: 'Purbalingga, Jawa Tengah',
    tanggalLahir: '24 Januari 1916',
    tanggalWafat: '29 Januari 1950',
    julukan: 'Panglima Besar TNI & Pahlawan Gerilya',
    kategori: 'Jawa',
    periode: 'Perang Gerilya Kemerdekaan',
    kutipan:
        'Tempat saya yang terbaik adalah di tengah-tengah anak buah. Saya akan meneruskan perjuangan lahir batin demi nusa dan bangsa.',
    biografi:
        'Panglima Besar Tentara Nasional Indonesia pertama yang memimpin perang gerilya melawan Agresi Militer Belanda II dalam kondisi sakit parah. Meskipun harus ditandu masuk keluar hutan, semangat juangnya tidak pernah padam dalam mempertahankan kemerdekaan. Ia menjadi simbol perlawanan militer tanpa syarat yang membuktikan kepada dunia bahwa Republik Indonesia masih berdiri kokoh.',
    kontribusi: [
      'Memimpin taktik perang gerilya yang mempertahankan eksistensi RI.',
      'Mengonsolidasikan TKR (Tentara Keamanan Rakyat) menjadi angkatan perang yang terstruktur.',
      'Menjadi simbol perlawanan tanpa syarat militer Indonesia terhadap penjajah.',
    ],
    foto: 'assets/images/pahlawan/soedirman.jpg',
  ),
  const Pahlawan(
    nama: 'Raden Ajeng Kartini',
    daerahAsal: 'Jepara, Jawa Tengah',
    tanggalLahir: '21 April 1879',
    tanggalWafat: '17 September 1904',
    julukan: 'Pelopor Emansipasi Wanita Indonesia',
    kategori: 'Jawa',
    periode: 'Kebangkitan Emansipasi',
    kutipan:
        'Tahukah engkau semboyanku? "Aku mau!" Dua patah kata yang ringkas itu sudah berulang kali membawa aku melintasi gunung rintangan.',
    biografi:
        'Tokoh emansipasi wanita Indonesia yang berjuang keras untuk mendobrak tradisi patriarki pada masa kolonial. Melalui surat-suratnya yang dikumpulkan dalam buku "Habis Gelap Terbitlah Terang", ia memperjuangkan hak pendidikan bagi perempuan pribumi. Pemikirannya yang progresif telah membuka jalan bagi perempuan Indonesia untuk mendapatkan kesetaraan dalam berbagai bidang kehidupan.',
    kontribusi: [
      'Mempelopori pergerakan emansipasi wanita di Indonesia.',
      'Mendirikan sekolah untuk perempuan pribumi agar mendapatkan akses pendidikan.',
      'Meninggalkan gagasan kesetaraan gender yang menginspirasi pergerakan nasional.',
    ],
    foto: 'assets/images/pahlawan/kartini.jpg',
  ),
  const Pahlawan(
    nama: 'Cut Nyak Dien',
    daerahAsal: 'Aceh Besar, Aceh',
    tanggalLahir: '1848',
    tanggalWafat: '6 November 1908',
    julukan: 'Srikandi Perang Gerilya Aceh',
    kategori: 'Sumatera',
    periode: 'Perang Aceh Melawan Kolonial',
    kutipan:
        'Sebagai pejuang perempuan Aceh, kita tidak boleh menumpahkan air mata pada orang yang gugur syahid membela tanah air.',
    biografi:
        'Pemimpin gerilya wanita dari Aceh yang terus berjuang melawan penjajahan Belanda bahkan setelah suaminya, Teuku Umar, gugur di medan perang. Ia memimpin pasukannya bergerilya di hutan-hutan Aceh selama puluhan tahun dengan penuh ketangguhan. Keteguhan hatinya menjadikannya simbol perlawanan tanpa kompromi rakyat Aceh demi menjaga kehormatan tanah air.',
    kontribusi: [
      'Memimpin langsung pasukan gerilya di hutan-hutan Aceh selama puluhan tahun.',
      'Menjadi simbol ketangguhan dan perlawanan tanpa kompromi rakyat Aceh.',
      'Mempertahankan semangat jihad melawan kolonialisme meski dalam kondisi fisik yang terus menurun.',
    ],
    foto: 'assets/images/pahlawan/cut_nyak_dien.jpg',
  ),
  const Pahlawan(
    nama: 'Ki Hajar Dewantara',
    daerahAsal: 'Yogyakarta',
    tanggalLahir: '2 Mei 1889',
    tanggalWafat: '26 April 1959',
    julukan: 'Bapak Pendidikan Nasional',
    kategori: 'Jawa',
    periode: 'Pendidikan & Pergerakan',
    kutipan:
        'Ing ngarsa sung tulada, ing madya mangun karsa, tut wuri handayani.',
    biografi:
        'Lahir dengan nama Raden Mas Soewardi Soerjaningrat, ia adalah pendiri Perguruan Taman Siswa sekaligus Bapak Pendidikan Nasional. Ia menentang keras kebijakan pendidikan diskriminatif Belanda dengan memberikan akses belajar bagi rakyat jelata. Melalui semboyan "Tut Wuri Handayani", ajarannya terus menjadi fondasi utama sistem pendidikan di Indonesia hingga saat ini.',
    kontribusi: [
      'Mendirikan lembaga pendidikan Taman Siswa pada tahun 1922.',
      'Menciptakan semboyan pendidikan "Tut Wuri Handayani".',
      'Menjadi Menteri Pendidikan pertama Republik Indonesia.',
    ],
    foto: 'assets/images/pahlawan/ki_hajar_dewantara.jpg',
  ),
  const Pahlawan(
    nama: 'Pangeran Diponegoro',
    daerahAsal: 'Yogyakarta',
    tanggalLahir: '11 November 1785',
    tanggalWafat: '8 Januari 1855',
    julukan: 'Pemimpin Perang Jawa (1825–1830)',
    kategori: 'Jawa',
    periode: 'Perang Jawa Abad ke-19',
    kutipan:
        'Perjuangan ini bukan semata demi tahta dunia, melainkan demi keadilan dan kehormatan rakyat yang tertindas.',
    biografi:
        'Pemimpin Perang Jawa (1825–1830) yang merupakan salah satu perlawanan terbesar terhadap pemerintah Hindia Belanda. Ia berhasil menyatukan kaum bangsawan, ulama, dan rakyat jelata untuk bersama-sama mengangkat senjata menentang penindasan. Perang yang dipimpinnya sangat dahsyat hingga membuat kas pemerintah kolonial Belanda terkuras habis.',
    kontribusi: [
      'Memimpin perlawanan rakyat Jawa Tengah dan sekitarnya terhadap intervensi Belanda.',
      'Menyatukan berbagai elemen masyarakat (petani, santri, bangsawan) dalam Perang Jawa.',
      'Menguras keuangan dan sumber daya militer Hindia Belanda secara drastis.',
    ],
    foto: 'assets/images/pahlawan/diponegoro.jpg',
  ),
  const Pahlawan(
    nama: 'Kapitan Pattimura',
    daerahAsal: 'Saparua, Maluku',
    tanggalLahir: '8 Juni 1783',
    tanggalWafat: '16 Desember 1817',
    julukan: 'Pahlawan Pembebasan Maluku',
    kategori: 'Maluku',
    periode: 'Perlawanan Rakyat Maluku',
    kutipan:
        'Pattimura-Pattimura tua boleh dihancurkan, tetapi kelak Pattimura-Pattimura muda akan bangkit meneruskan perjuangan!',
    biografi:
        'Pemimpin perlawanan heroik rakyat Maluku menentang monopoli rempah-rempah dan penindasan oleh kolonial Belanda. Bernama asli Thomas Matulessy, ia memimpin pasukan rakyat merebut Benteng Duurstede dan menumbangkan pasukan Belanda yang bersenjata lengkap. Keberaniannya menyatukan para raja dan patih lokal menjadi tonggak sejarah perlawanan yang gigih dari kawasan timur Indonesia.',
    kontribusi: [
      'Berhasil merebut Benteng Duurstede dari tangan Belanda.',
      'Menyatukan raja-raja dan patih di Maluku untuk melawan monopoli perdagangan.',
      'Mempertahankan wilayah Saparua dari gempuran armada Belanda sebelum akhirnya tertangkap.',
    ],
    foto: 'assets/images/pahlawan/pattimura.jpg',
  ),
  const Pahlawan(
    nama: 'Tuanku Imam Bonjol',
    daerahAsal: 'Pasaman, Sumatera Barat',
    tanggalLahir: '1772',
    tanggalWafat: '6 November 1864',
    julukan: 'Pemimpin Perang Padri Minangkabau',
    kategori: 'Sumatera',
    periode: 'Perang Padri Sumatera Barat',
    kutipan:
        'Adat basandi syarak, syarak basandi Kitabullah. Rapatkan barisan menegakkan kebenaran di bumi Minang.',
    biografi:
        'Ulama dan tokoh sentral kaum Padri yang bertempur gigih melawan pasukan kolonial Belanda di Sumatera Barat. Ia tidak hanya memimpin perlawanan bersenjata, tetapi juga berupaya menyatukan kaum Adat dan kaum Agama yang sebelumnya berselisih. Benteng pertahanannya di Bonjol sangat sulit ditembus dan menjadi bukti strategi perang yang tangguh sebelum akhirnya ia ditangkap.',
    kontribusi: [
      'Memimpin Perang Padri dan merevolusi perlawanan rakyat Minangkabau.',
      'Membangun benteng pertahanan Bonjol yang sangat sulit ditembus Belanda.',
      'Menyatukan kaum Adat dan kaum Agama untuk bersama-sama melawan penjajah.',
    ],
    foto: 'assets/images/pahlawan/imam_bonjol.jpg',
  ),
  const Pahlawan(
    nama: 'Sultan Hasanuddin',
    daerahAsal: 'Gowa, Sulawesi Selatan',
    tanggalLahir: '12 Januari 1631',
    tanggalWafat: '12 Juni 1670',
    julukan: 'Ayam Jantan dari Timur',
    kategori: 'Sulawesi',
    periode: 'Kedaulatan Maritim Nusantara',
    kutipan:
        'Lebih baik tenggelam di palung samudera terdalam daripada membiarkan kedaulatan tanah leluhur diinjak penjajah.',
    biografi:
        'Raja Gowa ke-16 yang dijuluki "Ayam Jantan dari Timur" oleh Belanda karena keberaniannya menentang monopoli perdagangan VOC. Ia berusaha keras menyatukan kerajaan-kerajaan kecil di Nusantara bagian timur untuk mempertahankan kedaulatan maritim dan ekonomi pribumi. Ketegasannya dalam menolak perjanjian yang merugikan rakyat memicu Perang Makassar yang sangat merepotkan pasukan kolonial.',
    kontribusi: [
      'Menyatukan kerajaan-kerajaan kecil di Indonesia Timur untuk menentang VOC.',
      'Memimpin Perang Makassar mempertahankan kedaulatan jalur perdagangan rempah.',
      'Menolak keras kebijakan monopoli yang merugikan pedagang pribumi.',
    ],
    foto: 'assets/images/pahlawan/sultan_hasanuddin.jpg',
  ),
  const Pahlawan(
    nama: 'Sutomo (Bung Tomo)',
    daerahAsal: 'Surabaya, Jawa Timur',
    tanggalLahir: '3 Oktober 1920',
    tanggalWafat: '7 Oktober 1981',
    julukan: 'Pengobar Semangat Pertempuran 10 November',
    kategori: 'Jawa',
    periode: 'Pertempuran Surabaya 1945',
    kutipan:
        'Selama banteng-banteng Indonesia masih mempunyai darah merah yang dapat membikin secarik kain putih menjadi merah dan putih, kita tidak akan menyerah!',
    biografi:
        'Pemimpin pergerakan rakyat Surabaya yang sangat berpengaruh pada masa awal kemerdekaan Republik Indonesia. Pidato-pidatonya yang disiarkan melalui radio sukses mengobarkan semangat juang masyarakat untuk bertempur melawan tentara Sekutu. Keberaniannya menjadi kunci penting dalam Pertempuran 10 November 1945 yang kini diperingati sebagai Hari Pahlawan.',
    kontribusi: [
      'Membangkitkan semangat perlawanan rakyat pada Pertempuran 10 November di Surabaya.',
      'Mendirikan Radio Pemberontakan untuk propaganda kemerdekaan.',
      'Menyatukan masyarakat dari berbagai kalangan demi mempertahankan kedaulatan RI.',
    ],
    foto: 'assets/images/pahlawan/bung_tomo.jpg',
  ),
  const Pahlawan(
    nama: 'Raden Dewi Sartika',
    daerahAsal: 'Bandung, Jawa Barat',
    tanggalLahir: '4 Desember 1884',
    tanggalWafat: '11 September 1947',
    julukan: 'Perintis Pendidikan Wanita Pasundan',
    kategori: 'Jawa',
    periode: 'Pendidikan Kaum Perempuan',
    kutipan:
        'Perempuan yang cerdas dan berdikari adalah fondasi utama bagi kemajuan keluarga serta kejayaan tanah air.',
    biografi:
        'Pelopor pendidikan dan emansipasi wanita dari Tanah Sunda yang gigih mendobrak tradisi konservatif di masyarakatnya. Ia mendirikan Sakola Istri pada tahun 1904 untuk mengajarkan keterampilan baca tulis dan vokasi kepada perempuan biasa. Dedikasinya yang luar biasa berhasil melahirkan generasi perempuan yang lebih mandiri dan berpendidikan di wilayah Pasundan.',
    kontribusi: [
      'Mendirikan Sakola Istri pada tahun 1904, sekolah perempuan pertama di Hindia Belanda.',
      'Mengembangkan kurikulum yang mencakup baca-tulis, menjahit, dan keterampilan rumah tangga.',
      'Memperluas cabang sekolahnya ke berbagai wilayah di Pasundan.',
    ],
    foto: 'assets/images/pahlawan/dewi_sartika.jpg',
  ),
  const Pahlawan(
    nama: 'Sutan Sjahrir',
    daerahAsal: 'Padang Panjang, Sumatera Barat',
    tanggalLahir: '5 Maret 1909',
    tanggalWafat: '9 April 1966',
    julukan: 'Perdana Menteri Pertama RI & Arsitek Diplomasi',
    kategori: 'Sumatera',
    periode: 'Diplomasi & Perjuangan Bawah Tanah',
    kutipan:
        'Kemerdekaan adalah jembatan emas menuju kemanusiaan yang beradab dan keadilan sosial bagi seluruh rakyat.',
    biografi:
        'Perdana Menteri pertama Indonesia dan diplomat ulung yang memainkan peran kunci pada masa awal kemerdekaan. Ia memimpin gerakan perlawanan bawah tanah selama pendudukan militer Jepang untuk mencegah Indonesia terseret arus fasisme. Kepiawaiannya dalam berdiplomasi di forum internasional berhasil mengamankan pengakuan de jure atas kedaulatan Republik Indonesia.',
    kontribusi: [
      'Merintis dan memimpin sistem pemerintahan parlementer pada awal kemerdekaan.',
      'Mengamankan pengakuan internasional secara de jure atas kemerdekaan Indonesia.',
      'Memimpin gerakan resistensi antifasis bawah tanah saat pendudukan militer Jepang.',
    ],
    foto: 'assets/images/pahlawan/sutan_sjahrir.jpg',
  ),
  const Pahlawan(
    nama: 'Martha Christina Tiahahu',
    daerahAsal: 'Nusalaut, Maluku',
    tanggalLahir: '4 Januari 1800',
    tanggalWafat: '2 Januari 1818',
    julukan: 'Pejuang Putri Kemerdekaan Maluku',
    kategori: 'Maluku',
    periode: 'Perlawanan Rakyat Remaja Maluku',
    kutipan:
        'Meski usia masih belia dan raga terbelenggu, bara cinta tanah air di dada tidak akan pernah padam oleh ancaman kolonial.',
    biografi:
        'Pejuang kemerdekaan remaja dari Maluku yang sudah terjun langsung ke medan pertempuran pada usia 17 tahun. Ia mendampingi ayahnya dan bertempur bersama pasukan Kapitan Pattimura untuk melawan kezaliman penjajah Belanda. Semangat pantang menyerahnya, bahkan saat ditangkap dan diasingkan, membangkitkan keberanian perempuan Maluku dalam berjuang.',
    kontribusi: [
      'Terjun ke garis depan pertempuran memberi semangat pasukan rakyat Maluku.',
      'Bertahan dari interogasi dan penahanan Belanda tanpa menyerah.',
      'Membangkitkan semangat perlawanan perempuan Maluku terhadap kolonial.',
    ],
    foto: 'assets/images/pahlawan/martha_christina_tiahahu.jpg',
  ),
  const Pahlawan(
    nama: 'Teuku Umar',
    daerahAsal: 'Meulaboh, Aceh',
    tanggalLahir: '1854',
    tanggalWafat: '11 Februari 1899',
    julukan: 'Panglima Perang Gerilya & Taktik Tipu Daya',
    kategori: 'Sumatera',
    periode: 'Perang Aceh Melawan Kolonial',
    kutipan:
        'Beungoh singoh geutanyoe jep kupi di keudee Meulaboh, atawa matee syahid! (Besok pagi kita minum kopi di Meulaboh, atau gugur syahid!)',
    biografi:
        'Panglima perang Aceh yang sangat cerdik dan dikenal dengan taktik gerilya serta strategi tipu dayanya melawan Belanda. Ia sempat berpura-pura menyerah dan bergabung dengan militer kolonial demi merampas senjata serta amunisi dalam jumlah besar. Setelah perbekalan dirasa cukup, ia kembali berbalik menyerang dan memberikan pukulan telak bagi pasukan Belanda di Aceh.',
    kontribusi: [
      'Merampas sejumlah besar senjata modern dan amunisi dari tangan militer Belanda.',
      'Menerapkan taktik perang gerilya tingkat tinggi yang membuat Belanda frustrasi.',
      'Memimpin serangan balasan besar-besaran bersama istrinya, Cut Nyak Dien.',
    ],
    foto: 'assets/images/pahlawan/teuku_umar.jpg',
  ),
];