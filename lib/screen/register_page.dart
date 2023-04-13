import 'package:flutter/material.dart';
import 'home_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late String _idNumber;
  late String _email;
  late String _password;
  void _validateInputs() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState?.save();
      if (_email == '123456@gmail.com') {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Hata"),
            content: Text("Üye zaten kayıtlı"),
            actions: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Tamam"),
              ),
            ],
          ),
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF800000),
        actions: [
          ElevatedButton(
            onPressed: _validateInputs,
            child: Text('Kayıt ol'),
         style: ElevatedButton.styleFrom(
          primary: Color(0xFF800000),
          ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Container(
          decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage("assets/images/1.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    "ARAMIZA KATIL!",
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Color(0xFF800000),
    ),
    ),
      Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: 'Kimlik Numarası',
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
          ),
          validator: (value) {
            if (value!.isEmpty) {
              return 'Lütfen kimlik numaranızı giriniz';
            }
            if (value.length != 11) { // 11 karakter kısıtlaması
              return 'Kimlik numaranız 11 haneli olmalıdır';
            }
            return null;
          },
          onSaved: (value) {
            _idNumber = value!;
          },
          maxLength: 11, // 11 karakter kısıtlaması
        ),
      ),

      SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'E-posta',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Lütfen e-posta adresinizi giriniz';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value!;
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Şifre',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Lütfen şifrenizi giriniz';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _password = value!;
                  },
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
    ]
    )
      )
    ));
  }
}
