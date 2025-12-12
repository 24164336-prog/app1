import 'package:flutter/material.dart';

void main() {
  runApp(const MyUI());
}

class MyUI extends StatelessWidget {
  const MyUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 150),

                // ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
                //    MAIN CARD
                // ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
                Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue.shade100,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      // ▬▬▬▬▬▬▬▬▬▬  Buttons A B C  ▬▬▬▬▬▬▬▬▬▬
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildTopButton("A", Colors.redAccent),
                          buildTopButton("B", Colors.orangeAccent),
                          buildTopButton("C", Colors.yellow.shade600),
                        ],
                      ),

                      const SizedBox(height: 25),

                      // ▬▬▬▬▬▬▬▬▬▬  Fancy Section Title  ▬▬▬▬▬▬▬▬▬▬
                      const Text(
                        "Fancy Section",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),

                      const SizedBox(height: 20),

                      // ▬▬▬▬▬▬▬▬▬▬  Grid  ▬▬▬▬▬▬▬▬▬▬
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.indigo.shade100.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          children: [
                            buildGridRow(["1", "2", "3"]),
                            const SizedBox(height: 15),
                            buildGridRow(["4", "5", "6"]),
                          ],
                        ),
                      ),

                      const SizedBox(height: 30),

                      // ▬▬▬▬▬▬▬▬▬▬ Info Cards Title ▬▬▬▬▬▬▬▬▬▬
                      const Text(
                        "Info Cards",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo,
                        ),
                      ),

                      const SizedBox(height: 20),

                      // ▬▬▬▬▬▬▬▬▬▬ Info Cards ▬▬▬▬▬▬▬▬▬▬
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildInfoCard("23", "Active", Colors.teal),
                          buildInfoCard("15", "Pending", Colors.orange),
                          buildInfoCard("7", "Completed", Colors.green),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬
  //            Widgets
  // ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬

  Widget buildTopButton(String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 35),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildGridRow(List<String> numbers) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: numbers
          .map(
            (num) => Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent.withOpacity(0.7),
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          child: Text(
            num,
            style: const TextStyle(
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      )
          .toList(),
    );
  }

  Widget buildInfoCard(String number, String label, Color color) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 2,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
