import 'package:flutter/material.dart';
import 'home_screen.dart';

class PageViewScreen extends StatefulWidget {
  @override
  _PageViewScreenState createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              _buildPage(
                'assets/afbea499038243 1.png',
                'A vida é curta e o\nmundo é vasto',
                'Na Friends tours and travel, personalizamos passeios educacionais confiáveis e confiáveis para destinos em todo o mundo',
                'Iniciar',
              ),
              _buildPage(
                'assets/afbea499038243 2.png',
                'É um grande mundo lá\nfora, vá explorar',
                'Para aproveitar ao máximo sua aventura\nvocê só precisa sair e ir para onde quiser.\nestamos esperando por você',
                'Próximo',
              ),
              _buildPage(
                'assets/afbea499038243 3.jpg',
                'As pessoas não fazem\nviagens, as viagens\nlevam pessoas',
                'Para aproveitar ao máximo sua aventura\nvocê só precisa sair e ir para onde quiser.\nestamos esperando por você',
                'Próximo',
                isLastPage: true,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPage(String imagePath, String title, String subtitle, String buttonText,
      {bool isLastPage = false}) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.55,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16.0),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) => buildIndicator(index)),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ElevatedButton(
              onPressed: () {
                if (isLastPage) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                } else {
                  setState(() {
                    _currentPage++;
                  });
                }
              },
              child: Text(
                buttonText,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 119, 216),
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
                minimumSize: Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                elevation: 5,
              ),
            ),
          ),
          SizedBox(height: 16.0),
        ],
      ),
    );
  }

  Widget buildIndicator(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      width: _currentPage == index ? 20.0 : 8.0,
      height: 8.0,
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}

