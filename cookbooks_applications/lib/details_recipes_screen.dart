import 'package:flutter/material.dart';

class DetailsRecipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0EBE1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image & Like/Share buttons
            Stack(
              children: [
                Image.asset(
                  'assets/smokechick.png',
                  width: double.infinity,
                  height: 288,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                       onPressed: () {
                        Navigator.pushNamed(context, '/dashboard');
                      },
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(Icons.favorite_border),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(Icons.share),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Text Content
            Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chicken',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Savory Herb-Infused Chicken',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[900],
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        '⏱ 60 min',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        '•',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Hard',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    'By Fabian chef',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),

            // Ingredients Section
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'INGREDIENTS',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildIngredientItem('1 whole chicken (about 3-4 pounds)'),
                      _buildIngredientItem('2 lemons, sliced'),
                      _buildIngredientItem('6 cloves garlic, minced'),
                      _buildIngredientItem('2 tablespoons olive oil'),
                      _buildIngredientItem('1 teaspoon dried thyme'),
                      _buildIngredientItem('1 teaspoon dried rosemary'),
                      _buildIngredientItem('Salt and black pepper to taste'),
                    ],
                  ),
                ],
              ),
            ),

            // Nutritional Value
            Container(
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'NUTRITIONAL VALUE',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Per serving (based on a 4-pound chicken):',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[800],
                    ),
                  ),
                  SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildNutritionItem('Calories:', '~250'),
                      _buildNutritionItem('Protein:', '~30g'),
                      _buildNutritionItem('Total Fat:', '~13g'),
                      _buildNutritionItem('Carbohydrates:', '~5g'),
                    ],
                  ),
                ],
              ),
            ),

            // Note
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'NOTE: NUTRITIONAL VALUES ARE APPROXIMATE AND MAY VARY BASED ON SPECIFIC INGREDIENTS AND PORTION SIZES.',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            SizedBox(height: 16),

            // Description paragraphs
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Picture succulent chicken infused with the bright notes of lemon and the aromatic richness of garlic. It\'s a symphony of flavors that will have your taste buds dancing. Join us as we delve into the art of roasting and uncover the secrets behind creating a masterpiece that\'s not just a meal but a celebration of culinary craftsmanship.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'As you preheat your oven, envision the kitchen filling with the tantalizing aroma of herbs and citrus, setting the stage for a delightful meal that transcends the ordinary. The anticipation builds as the chicken roasts to golden perfection, promising a dining experience that marries simplicity with sophistication. Whether you\'re a seasoned chef or a kitchen novice, this recipe invites you to become a culinary artist, creating a masterpiece that will leave a lasting impression on your guests and loved ones.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Do's and Don'ts
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Let\'s go over the basics— the do\'s, and the don\'ts— for How to Cook a chicken',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[900],
                    ),
                  ),
                  SizedBox(height: 16),

                  // DO'S
                  Text(
                    'DO\'S:',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  _buildDoDontItem(
                    'Thoroughly Clean Hands and Surfaces:',
                    'Before and after handling raw chicken, ensure your hands, utensils, and surfaces are clean to prevent cross-contamination.',
                  ),
                  _buildDoDontItem(
                    'Use Separate Cutting Boards:',
                    'Dedicate specific cutting boards for raw chicken to avoid the spread of bacteria to other foods.',
                  ),
                  _buildDoDontItem(
                    'Check Internal Temperature:',
                    'Invest in a reliable meat thermometer to ensure the chicken reaches the safe internal temperature of 165°F (74°C).',
                  ),
                  SizedBox(height: 16),

                  // DON'TS
                  Text(
                    'DON\'TS:',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  _buildDoDontItem(
                    'Thaw Chicken at Room Temperature:',
                    'Avoid thawing chicken on the counter. Instead, thaw it in the refrigerator to prevent bacterial growth.',
                  ),
                  _buildDoDontItem(
                    'Overcrowd the Pan:',
                    'When roasting, ensure the chicken pieces have space between them for even cooking. Overcrowding can lead to unevenly cooked chicken.',
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Instructions
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'INSTRUCTIONS',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[900],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'This recipe goes beyond the basics, inviting you to savor the richness of a creamy tomato basil sauce that clings to each strand of perfectly cooked pasta. It\'s a celebration of simplicity, where every ingredient plays a crucial role in creating a dish that is as comforting as it is delightful.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Allow the chicken to rest for 10 minutes before carving. This brief resting period is essential; it allows the juices to redistribute, ensuring each slice is succulent and bursting with flavor. As you carve into the golden exterior, be prepared for the enticing aroma that fills the air, signaling that your Citrus Infusion Delight is ready to be savored.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 24),

                  // PREHEAT AND PREPARE
                  Text(
                    'PREHEAT AND PREPARE',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  _buildInstructionItem('Preheat your oven to 375°F (190°C).'),
                  _buildInstructionItem('Rinse the chicken inside and out, then pat it dry with paper towels.'),
                  SizedBox(height: 24),

                  // CITRUS INFUSION
                  Text(
                    'CITRUS INFUSION',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  _buildInstructionItem('Carefully lift the skin of the chicken and rub minced garlic directly onto the meat.'),
                  _buildInstructionItem('Place lemon slices under the skin, ensuring they cover as much surface as possible.'),
                  SizedBox(height: 16),
                  Image.asset(
                    'assets/chickensteam.jpg',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16),

                  // HERB BLEND
                  Text(
                    'HERB BLEND',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  _buildInstructionItem('Carefully lift the skin of the chicken and rub minced garlic directly onto the meat.'),
                  _buildInstructionItem('Place lemon slices under the skin, ensuring they cover as much surface as possible.'),
                  _buildInstructionItem('Place lemon slices under the skin, ensuring they cover as much surface as possible.'),
                  SizedBox(height: 16),
                  Image.asset(
                    'assets/chickensteam.jpg',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16),

                  // ROAST PERFECTION
                  Text(
                    'ROAST PERFECTION',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  _buildInstructionItem('Carefully lift the skin of the chicken and rub minced garlic directly onto the meat.'),
                  _buildInstructionItem('Place lemon slices under the skin, ensuring they cover as much surface as possible.'),
                  _buildInstructionItem('Place lemon slices under the skin, ensuring they cover as much surface as possible.'),
                  SizedBox(height: 16),
                  Image.asset(
                    'assets/chickensteam.jpg',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16),

                  // Additional notes
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                      ),
                      children: [
                        TextSpan(
                          text: 'Roasted Vegetables:',
                          style: TextStyle(
                            color: Colors.red,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: 'Carefully lift the skin of the chicken and rub minced garlic directly onto the meat. ',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                      ),
                      children: [
                        TextSpan(
                          text: 'Roasted Vegetables:',
                          style: TextStyle(
                            color: Colors.red,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: 'Carefully lift the skin of the chicken and rub minced garlic directly onto the meat. ',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Book mark section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The combination of fresh lemon and aromatic garlic creates a citrus-infused masterpiece that takes the classic roast chicken to a whole new level. The acidity of the lemons not only adds brightness but also helps to tenderize the meat, resulting in a juicy and flavorful dish.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Whether you\'re hosting a family dinner or looking for a show-stopping centerpiece for a special celebration, this Lemon Garlic Roasted Chicken is the answer. The simplicity of the ingredients allows the natural flavors to shine, making it a versatile and impressive dish.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 24),

                  // Buttons
                  Column(
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.black),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          minimumSize: Size(double.infinity, 48),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ADD BOOKMARK',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            Icon(Icons.bookmark_border),
                          ],
                        ),
                      ),
                      SizedBox(height: 12),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.black),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          minimumSize: Size(double.infinity, 48),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'SHARE',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.facebook, size: 30),
                                SizedBox(width: 8),
                                Icon(Icons.camera_alt, size: 30),
                                SizedBox(width: 8),
                                Icon(Icons.video_library, size: 30),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            // Author Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/chickensteam.jpg',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Isabella Russo',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.grey[800],
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'In the world of pots and pans, I\'m on a mission to turn every meal into a masterpiece. Cooks Delight is not just a blog; it\'s a shared space where the love for food transcends boundaries. Here, we celebrate the art of crafting meals that not only nourish the body but also feed the soul.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[700],
                          ),
                        ),
                        SizedBox(height: 16),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.black),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          ),
                          child: Text(
                            'LEARN MORE',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildIngredientItem(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• ',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[800],
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[800],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNutritionItem(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[900],
            fontWeight: FontWeight.w500,
          ),
          children: [
            TextSpan(text: label, style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: ' $value'),
          ],
        ),
      ),
    );
  }

  Widget _buildDoDontItem(String title, String description) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInstructionItem(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '• ',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[800],
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavBar() {
  return Builder(
    builder: (context) => Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.home, color: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/dashboard');
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {
              // Tambahkan kalo udah ada ya ges
            },
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              color: Color(0xFFD9D9D9),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.add, color: Colors.black),
              onPressed: () {
                Navigator.pushNamed(context, '/add');
              },
            ),
          ),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
          ),
          IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
    ),
  );
}
}