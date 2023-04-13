import 'package:flutter/material.dart';
import '../home_screen/cart_page.dart';
import '../../model/product_model.dart';

class MedicalEquipmentPage extends StatefulWidget {
  const MedicalEquipmentPage({Key? key}) : super(key: key);

  @override
  State<MedicalEquipmentPage> createState() => _MedicalEquipmentPageState();
}

class _MedicalEquipmentPageState extends State<MedicalEquipmentPage> {
  List<Product> _MedicalEquipment = [
    products[11],
    products[12],
    products[13],
    products[14],
    products[15],
    products[16],
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {
            Navigator.pop(context); // Geri düğmesi işlevselliği
          },
        ),
        title: Text("Tıbbi Malzemeler",style: TextStyle(color:Colors.black,fontSize: 28,),),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: GridView.count(
        crossAxisCount: 2, // Elemanların yatayda 2 sütun olacak şekilde yerleştirilmesi
        childAspectRatio: 0.7, // Elemanların boy/en oranını ayarla
        children: _MedicalEquipment.map((product) => Padding(
          padding: EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              // Tıklanılan ürünün detay sayfasına yönlendirme kodu buraya yazılabilir
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Image.asset(
                      product.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          product.category,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey[600],
                          ),
                        ),
                        Text(
                          product.price.toString() + " TL",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.red,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            product.addToCart();
                            CartPage.sepetUrunler.add(product); // Ürünü sepete ekle ve sepette göster
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CartPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                          child: Text(
                            "Sepete Ekle",
                            style: TextStyle(
                              color: Colors.white,
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
        )).toList(),
      ),
    );
  }
}