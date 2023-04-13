class NewsModel {
  final String title;
  final String source;
  final String image;

  NewsModel({
    required this.title,
    required this.source,
    required this.image,
  });
}
final List<NewsModel> newsList = [
  NewsModel(
    title: 'Deprem bölgesindeki üst solunum yolu hastalıklarına sıkı takip',
    source: 'Deprem bölgesinde, üst solunum yolu enfeksiyonları başta olmak üzere salgın riskine karşı veriler Sağlık Bakanlığınca toplanarak inceleniyor ve hastalıklarda artış olup olmadığı takip ediliyor.',
    image: 'assets/images/N1.jpg',
  ),
  NewsModel(
    title: '80 yaş ve üzeri hastalar "YAŞAM"a emanet edilecek',
    source: 'Sağlık Bakanlığı tarafından, 80 yaş ve üstü kişiler için hastanelerde kurulacak Sağlıklı Yaş Alma Merkezleri, yaşlıların evinde ve yerinde tıbbi bakım ihtiyaçlarını destekleyecek.',
    image: 'assets/images/N2.jpg',
  ),
  NewsModel(
    title: "Google'ın eski mühendisi: İnsanlar 8 yıl içinde ölümsüz olacak",
    source: "Google'ın eski mühendislerinden olan fütürist Ray Kurzweil, insanların sekiz yıl içinde ölümsüzlüğe ulaşacağını tahmin etti. Kurzweil, nanoteknoloji ve robotik alanlarındaki gelişmelerin, yaşlanmayı tersine çeviren nanobotlara yol açacağına söyledi. Kurzweil, bu minit robotların, vücut yaşlandıkça bozulan hasarlı hücre ve dokuları onaracağını belirterek, insanları kanser gibi hastalıklara karşı bağışık hale getireceğini öne sürdü.",
    image: 'assets/images/N3.jpg',
  ),
];
