import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RecipeCreatePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class RecipeCreatePage extends StatefulWidget {
  @override
  _RecipeCreatePageState createState() => _RecipeCreatePageState();
}

class _RecipeCreatePageState extends State<RecipeCreatePage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController storyController = TextEditingController();
  final TextEditingController portionController = TextEditingController(text: "2 Person");
  final TextEditingController timeCookController = TextEditingController(text: "1 hr 30 mnt");
  List<String> ingredients = ['1/2 Ekor Ayam', '2 buah Wortel'];
  List<TextEditingController> stepControllers = [
    TextEditingController(text: "1/2 Ekor Ayam"),
    TextEditingController(text: "2 Buah Tomat"),
  ];

  void addIngredient() {
    setState(() {
      ingredients.add('');
    });
  }

  void addStep() {
    setState(() {
      stepControllers.add(TextEditingController());
    });
  }

  void removeStep(int index) {
    setState(() {
      stepControllers.removeAt(index);
    });
  }

  @override
  void dispose() {
    titleController.dispose();
    storyController.dispose();
    for (var controller in stepControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  Widget buildIngredientTile(String text) {
    return ListTile(
      dense: true,
      leading: Icon(Icons.menu),
      title: Text(
        text,
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: Colors.grey[800],
        ),
      ),
    );
  }

  Widget buildCookingStep(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.menu),
            SizedBox(width: 4),
            Text("${index + 1}. "),
            Expanded(
              child: TextField(
                controller: stepControllers[index],
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.delete_outline, color: Colors.red),
              onPressed: () => removeStep(index),
            ),
          ],
        ),
        SizedBox(height: 8),
        Container(
          width: double.infinity,
          height: 100,
          color: Colors.grey.shade300,
          child: Icon(Icons.camera_alt, color: Colors.grey),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F0E9),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
           onPressed: () {
            Navigator.pushNamed(context, '/dashboard');
          },
        ),
        centerTitle: true,
        title: Text("Create", style: TextStyle(color: Colors.black)),
      ),
      body: SingleChildScrollView(
  child: Container(
    color: const Color(0xFFF5F0E9),
    padding: const EdgeInsets.all(16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 200,
          color: Colors.grey.shade300,
          child: const Center(
            child: Text(
              "Foto Resep (Opsional)",
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: titleController,
          decoration: const InputDecoration(
            labelText: 'Judul Makanan *',
            border: UnderlineInputBorder(),
          ),
        ),
        TextField(
          controller: storyController,
          decoration: const InputDecoration(
            labelText: 'Cerita di balik masakan ini',
            border: UnderlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16),
        TextField(
          controller: portionController,
          decoration: const InputDecoration(
            labelText: 'Porsi',
            border: UnderlineInputBorder(),
          ),
        ),
        const SizedBox(height: 12),
        TextField(
          controller: timeCookController,
          decoration: const InputDecoration(
            labelText: 'Time Cook',
            border: UnderlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "Ingredients",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ...ingredients.map((item) => buildIngredientTile(item)).toList(),
        Row(
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Grup"),
            ),
            const SizedBox(width: 10),
            TextButton.icon(
              onPressed: addIngredient,
              icon: const Icon(Icons.add),
              label: const Text("Ingredient"),
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text(
          "Cooking Steps",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ...stepControllers
            .asMap()
            .entries
            .map((entry) => buildCookingStep(entry.key))
            .toList(),
        Row(
          children: [
            TextButton.icon(
              onPressed: addStep,
              icon: const Icon(Icons.add),
              label: const Text("Steps"),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: const Text("Save"),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),
                child: const Text("Cancel"),
              ),
            ),
          ],
        ),
      ],
    ),
  ),
),
    );
  }
}
