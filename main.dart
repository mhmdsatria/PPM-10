import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Ikon kembali
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image Upload
              Container(
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.add, size: 48.0),
                      SizedBox(height: 8.0),
                      Text('Add Post Image'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.0),

              // Heading
              TextField(
                decoration: InputDecoration(
                  labelText: 'Add Heading',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),

              // Tag
              TextField(
                decoration: InputDecoration(
                  labelText: 'Add Tag',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),

              // Category
              TextField(
                decoration: InputDecoration(
                  labelText: 'Category',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),

              // Video Link
              TextField(
                decoration: InputDecoration(
                  labelText: 'Add Video Link',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),

              // Article
              TextField(
                decoration: InputDecoration(
                  labelText: 'Write Articles',
                  border: OutlineInputBorder(),
                ),
                maxLines: 5,
              ),
              SizedBox(height: 16.0),

              // Submit Button
              Center(
                child: Container(
                  width:
                      double.infinity, // Ensure the button takes the full width
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10), // Optional padding to control width
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle submission
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical:15, // Adjust vertical padding to match Sign In button
                      ),
                      minimumSize: Size(MediaQuery.of(context).size.width / 4, 10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
