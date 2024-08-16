import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String imagePath;
  final String country;
  final String location;
  final String rating;
  final String reviews;
  final double pricePerPerson;
  final String description;

  const DetailsScreen({
    Key? key,
    required this.imagePath,
    required this.country,
    required this.location,
    required this.rating,
    required this.reviews,
    required this.pricePerPerson,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.cover,
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 16.0,
            left: 16.0,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Positioned(
            height: 500,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(40.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55.0),
                  topRight: Radius.circular(55.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 16.0), // Adicionado para descer os textos
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        country,
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 16.0,
                        backgroundImage: NetworkImage(
                            'https://cdn.icon-icons.com/icons2/2643/PNG/512/male_man_people_person_avatar_white_tone_icon_159363.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    location,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 20.0),
                      SizedBox(width: 4.0),
                      Text(
                        '$rating ($reviews+)',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '\$$pricePerPerson/pessoa',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  // Adicionando as outras fotos
                  Row(
                    children: [
                      _buildPhotoIcon('assets/a.webp'),
                      _buildPhotoIcon('assets/a.webp'),
                      _buildPhotoIcon('assets/a.webp'),
                      _buildPhotoIcon('assets/a.webp'),
                      _buildPhotoIcon('assets/a.webp'),
                       _buildPhotoIcon('assets/a.webp'),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'About Destination',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Ação do botão "Agende agora"
                    },
                    child: Text(
                      'Agende agora',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 0, 119, 216),
                      minimumSize: Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotoIcon(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          imagePath,
          width: 50.0,
          height: 50.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}