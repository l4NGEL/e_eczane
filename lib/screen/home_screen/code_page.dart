import 'package:flutter/material.dart';

class CodePage extends StatefulWidget {
  const CodePage({Key? key}) : super(key: key);

  @override
  _CodePageState createState() => _CodePageState();
}

class _CodePageState extends State<CodePage> {
  final _formKey = GlobalKey<FormState>();
  late String _code;

  void _showResult() {
    if (_code == "QAZ123W") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultPage(
            games: ["COLDAWAY PLUS", "CALPOL"],
          ),
        ),
      );
    } else {
      // Kod bulunamadı uyarısı
    }
    if (_code == "A5SD542") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultPage(
            games: ["KLAVUNAT", "PAROL", "İBUCOLD C"],
          ),
        ),
      );
    } else {
      // Kod bulunamadı uyarısı
    }
    if (_code == "FGD4G5F") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultPage(
            games: ["PANADOL", "AMOKLAVİN", "BALIK YAĞI"],
          ),
        ),
      );
    } else {

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF800000),
        title: Text("Kod Gir"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Kod",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Lütfen kod giriniz.";
                  }
                  return null;
                },
                onSaved: (value) {
                  _code = value!;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    _showResult();
                  }
                },
                child: Text("Göster"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF800000)), // arka plan rengi
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // yazı rengi
                  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(25)), // buton içi dolgu
                  textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 20)), // yazı stil
                  elevation: MaterialStateProperty.all<double>(5), // gölge boyutu
                  side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Colors.white, width: 1)), // kenarlık özelliği
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )
                  ), // buton şekli
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ResultPage extends StatelessWidget {
  final List<String> games;

  const ResultPage({Key? key, required this.games}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFF800000) ,
        title: Text("Sonuç"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Aşağıdaki ilaçları alabilirsiniz:"),
            SizedBox(height: 16.0),
            Column(
              children: games.map((game) => Text(game)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
