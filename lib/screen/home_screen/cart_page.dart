import 'package:flutter/material.dart';
import '../../model/payment_info_model.dart';
import '../../model/product_model.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();

  static List<Product> sepetUrunler = [];
}

class _CartPageState extends State<CartPage> {
  double _toplamFiyat = 0.0;
  TextEditingController _kartNumarasiController = TextEditingController();
  TextEditingController _adSoyadController = TextEditingController();
  TextEditingController _cvvController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _hesaplaToplamFiyat();
  }

  void _hesaplaToplamFiyat() {
    double toplam = 0.0;
    for (var urun in CartPage.sepetUrunler) {
      toplam += urun.price;
    }
    setState(() {
      _toplamFiyat = toplam;
    });
  }

  void _urunCikar(int index) {
    setState(() {
      CartPage.sepetUrunler.removeAt(index);
      _hesaplaToplamFiyat();
    });
  }

  void _odemeYap() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Ödeme Bilgileri"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _kartNumarasiController,
                decoration: InputDecoration(hintText: "Kart Numarası"),
              ),
              TextField(
                controller: _adSoyadController,
                decoration: InputDecoration(hintText: "Ad ve Soyad"),
              ),
              TextField(
                controller: _cvvController,
                decoration: InputDecoration(hintText: "CVV"),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text("Tamamla"),
              onPressed: () {
                // Yeni PaymentInfo nesnesi oluşturulur ve veriler atanır.
                PaymentInfo paymentInfo = PaymentInfo(
                  cardNumber: _kartNumarasiController.text,
                  name: _adSoyadController.text,
                  cvv: _cvvController.text,
                );
                if (_onaylaOdeme(paymentInfo)) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentSuccessPage(),
                    ),
                  );
                }
                // Veriler doğruysa ödeme başarılı sayfasına atılır.
                else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Ödeme Bilgileri Hatalı! Lütfen tekrar deneyiniz."),
                    ),
                  );
                }
              },
            ),
          ],
        );
      },
    );
  }

  bool _onaylaOdeme(PaymentInfo paymentInfo) {
    // Burada ödeme işlemi yapılır.
    // Ödeme başarılıysa true döndürülür, aksi takdirde false.
    // Bu örnekte sadece kart numarası doğruysa ödeme başarılı kabul ediliyor.
    return paymentInfo.cardNumber.length == 10;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF800000),
        title: Text("Sepet"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: CartPage.sepetUrunler.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(CartPage.sepetUrunler[index].name),
                  subtitle: Text(CartPage.sepetUrunler[index].category),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("${CartPage.sepetUrunler[index].price}"),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () => _urunCikar(index),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),


    Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Toplam Fiyat: $_toplamFiyat",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  child: Text("Ödeme Yap"),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF006400), // arka plan rengi
                  ),
                  onPressed: () => _odemeYap(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }}

class PaymentSuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF800000),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/scooter.png",
                  width: 150,
                  height: 150,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Ödeme başarılı!",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "Siparişiniz yola çıkıyor..",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}


