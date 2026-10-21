class TourismPlace {
  String name;
  String location;
  String description;
  String daysOpen;
  String timeOpen;
  String ticketPrice;
  String imageAsset;
  List<String> imageURLs;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.daysOpen,
    required this.timeOpen,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageURLs,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Farm House Lembang',
    location: 'Lembang',
    description: 'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa khas Eropa.',
    daysOpen: 'Selasa - Minggu',
    timeOpen: '09:00 - 20:00',
    ticketPrice: 'Rp 25.000',
    imageAsset: 'images/farm-house.jpg',
    imageURLs: ['images/fhs4.jpg', 'images/fhs2.jpg', 'images/fhs3.jpg'],
  ),
  TourismPlace(
    name: 'Observatorium Bosscha',
    location: 'Lembang',
    description: 'Observatorium Bosscha adalah lembaga penelitian astronomi tertua di Indonesia. Didirikan oleh Nederlandsch-Indische Sterrenkundige Vereeniging (NISV) pada tahun 1923.',
    daysOpen: 'Sabtu',
    timeOpen: '09:00 - 13:00',
    ticketPrice: 'Rp 15.000',
    imageAsset: 'images/bosscha.jpg',
    imageURLs: ['images/bsc1.jpg', 'images/bsc2.jpg', 'images/bsc3.jpg'],
  ),
  TourismPlace(
    name: 'Jalan Asia Afrika',
    location: 'Kota Bandung',
    description: 'Jalan Asia Afrika adalah salah satu jalan utama di Kota Bandung yang bersejarah. Di sini terdapat Gedung Merdeka yang menjadi tempat Konferensi Asia-Afrika pada tahun 1955.',
    daysOpen: 'Setiap Hari',
    timeOpen: '24 Jam',
    ticketPrice: 'Gratis',
    imageAsset: 'images/jalan-asia-afrika.jpg',
    imageURLs: ['images/jas1.jpg', 'images/jas2.jpg'],
  ),
  TourismPlace(
    name: 'Stone Garden',
    location: 'Padalarang',
    description: 'Stone Garden atau Taman Batu di Citatah, Padalarang, menyuguhkan pemandangan bebatuan purba yang eksotis di atas bukit karst yang luas.',
    daysOpen: 'Setiap Hari',
    timeOpen: '06:00 - 17:00',
    ticketPrice: 'Rp 10.000',
    imageAsset: 'images/stone-garden.jpg',
    imageURLs: ['images/sg1.jpg', 'images/sg2.jpg'],
  ),
  TourismPlace(
    name: 'Taman Film Pasopati',
    location: 'Kota Bandung',
    description: 'Taman Film Pasopati terletak di bawah jajaran Flyover Pasopati. Taman ini dilengkapi layar besar dan rumput sintetis, sering digunakan warga untuk menonton film bersama.',
    daysOpen: 'Setiap Hari',
    timeOpen: '24 Jam',
    ticketPrice: 'Gratis',
    imageAsset: 'images/taman-film.jpg',
    imageURLs: ['images/tmf1.jpg', 'images/tmf2.jpg'],
  ),
  TourismPlace(
    name: 'Museum Geologi',
    location: 'Kota Bandung',
    description: 'Museum Geologi Bandung didirikan pada tahun 1929. Museum ini menyimpan berbagai koleksi fosil, batuan, serta sejarah kepurbakalaan bumi.',
    daysOpen: 'Senin - Kamis & Sabtu - Minggu',
    timeOpen: '09:00 - 15:00',
    ticketPrice: 'Rp 3.000',
    imageAsset: 'images/museum-geologi.jpg',
    imageURLs: ['images/mg1.jpg', 'images/mg2.jpg'],
  ),
  TourismPlace(
    name: 'Floating Market',
    location: 'Lembang',
    description: 'Tempat wisata liburan keluarga di Lembang di mana Anda dapat menikmati suasana dan kuliner khas Bandung yang dijajakan di atas perahu di atas danau.',
    daysOpen: 'Setiap Hari',
    timeOpen: '09:00 - 18:00',
    ticketPrice: 'Rp 30.000',
    imageAsset: 'images/floating-market.jpg',
    imageURLs: ['images/floating1.jpg', 'images/floating2.jpg'],
  ),
  TourismPlace(
    name: 'Kawah Putih',
    location: 'Ciwidey',
    description: 'Kawah Putih adalah sebuah danau vulkanik yang menakjubkan di Ciwidey dengan air danau berwarna putih ke greenish yang eksotis.',
    daysOpen: 'Setiap Hari',
    timeOpen: '08:00 - 17:00',
    ticketPrice: 'Rp 25.000',
    imageAsset: 'images/kawah-putih.jpg',
    imageURLs: ['images/kawah1.jpg', 'images/kawah2.jpg'],
  ),
];
