import 'package:flutter/material.dart';
import '../screens/details_screen.dart'; // Importe a nova tela de detalhes

class DestinationCard extends StatelessWidget {
  final String imagePath;
  final String country;
  final String location;
  final String rating;
  final String reviews;

  const DestinationCard({
    Key? key,
    required this.imagePath,
    required this.country,
    required this.location,
    required this.rating,
    required this.reviews,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              imagePath: imagePath,
              country: country,
              location: location,
              rating: rating,
              reviews: reviews,
              pricePerPerson: 6459, // Pode ser ajustado conforme necessário
              description:
                  'Madri, a capital da Espanha, situada no centro do país, é uma cidade de avenidas elegantes e parques grandes e bem cuidados, como o Buen Retiro.',
            ),
          ),
        );
      },
      child: Container(
        width: 270.0,
        margin: EdgeInsets.only(right: 40.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.white,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Stack(
                children: [
                  Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 380.0, // Ajuste a altura da imagem para evitar overflow
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                        size: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    country,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    location,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 20.0),
                          SizedBox(width: 4.0),
                          Text(
                            rating.toString(),
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                left: 24.0,
                                child: CircleAvatar(
                                  radius: 12.0,
                                  backgroundImage: NetworkImage(
                                    'https://cdn.icon-icons.com/icons2/2643/PNG/512/male_man_people_person_avatar_white_tone_icon_159363.png',
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 12.0,
                                child: CircleAvatar(
                                  radius: 12.0,
                                  backgroundImage: NetworkImage(
                                    'https://cdn.icon-icons.com/icons2/2643/PNG/512/male_man_people_person_avatar_white_tone_icon_159363.png',
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                radius: 12.0,
                                backgroundImage: NetworkImage(
                                  'https://cdn.icon-icons.com/icons2/2643/PNG/512/male_man_people_person_avatar_white_tone_icon_159363.png',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 8.0),
                          CircleAvatar(
                            radius: 14.0,
                            backgroundColor: Colors.blue.withOpacity(0.2),
                            child: Text(
                              '+$reviews',
                              style: TextStyle(fontSize: 10.0, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
