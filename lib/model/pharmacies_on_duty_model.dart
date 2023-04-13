class EczaneModel {
  final String name;
  final String address;
  final String phone;
  final bool isOpen;

  EczaneModel({
    required this.name,
    required this.address,
    required this.phone,
    required this.isOpen,
  });
}


final List<EczaneModel> eczaneList = [
  EczaneModel(
    name: 'Acıbadem Eczanesi',
    address: 'Acıbadem Mahallesi, Acıbadem Caddesi No:4, Kadıköy',
    phone: '(0216) 743 98 00',
    isOpen: true,
  ),
  EczaneModel(
    name: 'İnci Eczanesi',
    address: 'Göztepe Mahallesi, Bağdat Caddesi No:500, Kadıköy',
    phone: '(0216) 565 33 28',
    isOpen: true,
  ),
  EczaneModel(
    name: 'Eczacıbaşı Eczanesi',
    address: 'Feneryolu Mahallesi, Eczacıbaşı Caddesi No:1, Kadıköy',
    phone: '(0216) 564 45 17',
    isOpen: false,
  ),
];