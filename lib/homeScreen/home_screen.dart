import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  bool isFemale = false;
  TextEditingController ageController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  double bmi = 0;
  int boy = 0;
  int kilo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade200,
        title: Center(
          child: Text(
            "Brokilo",
            style: GoogleFonts.poppins(
              textStyle: TextStyle(fontSize: 27, fontWeight: FontWeight.bold, color: Colors.green.shade700),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
        child: Stack(
          children: [
            SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Selam Bro!',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(fontSize: 27, fontWeight: FontWeight.bold, color: Colors.green.shade700),
                                ),
                              ),
                              Text(
                                'Öncelikle vücut kitle endeksini hesaplayalım',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.green.shade900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 130,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                          isMale
                                              ? 'assets/icons/male.png'
                                              : isFemale
                                                  ? 'assets/icons/femalee.png'
                                                  : 'assets/icons/male.png',
                                        ),
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Cinsiyet',
                                        style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green.shade700,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                isFemale = !isFemale;
                                                if (isFemale = true) {
                                                  setState(() {
                                                    isMale = false;
                                                  });
                                                }
                                              });
                                            },
                                            child: Container(
                                              height: 80,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                color: isFemale ? Colors.pink : Colors.grey,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: const Center(
                                                child: Icon(
                                                  Icons.female_outlined,
                                                  color: Colors.white,
                                                  size: 41,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                isMale = !isMale;
                                                if (isMale = true) {
                                                  setState(() {
                                                    isFemale = false;
                                                  });
                                                }
                                              });
                                            },
                                            child: Container(
                                              height: 80,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                color: isMale ? Colors.black : Colors.grey,
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: const Center(
                                                child: Icon(
                                                  Icons.male_outlined,
                                                  color: Colors.white,
                                                  size: 41,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Yaş',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green.shade700,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                height: 90,
                                width: 250,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  controller: ageController,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              Text(
                                'Boy (m)',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green.shade700,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                height: 90,
                                width: 250,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  controller: heightController,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                              Text(
                                'Ağırlık (kg)',
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green.shade700,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                height: 90,
                                width: 250,
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  controller: weightController,
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green.shade400, // background
                          onPrimary: Colors.white, // foreground
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text(bmi.toString()),
                                content: Text('Vücut kitle endeks değeriniz'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Kapat'),
                                  ),
                                ],
                              );
                            },
                          );
                          setState(() {
                            boy = int.parse(heightController.text);
                            kilo = int.parse(weightController.text);
                            bmi = kilo / (boy * boy);
                            bmi = bmi * 10000;
                          });
                        },
                        child: Center(
                          child: Text(
                            'Hesapla',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
