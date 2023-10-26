import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MoodReviewPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MoodReviewPage extends StatefulWidget {
  @override
  _MoodReviewPageState createState() => _MoodReviewPageState();
}

class _MoodReviewPageState extends State<MoodReviewPage> {
  PageController _pageController = PageController(initialPage: 0);
  bool isWeekView = true;

  void toggleView() {
    setState(() {
      isWeekView = !isWeekView;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple[100],
        child: Column(
          children: [
            const SizedBox(height: 50),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: 180,
              height: 50,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 117, 11, 136),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      _pageController.animateToPage(
                        0,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                      toggleView();
                    },
                    child: Text(
                      'Week',
                      style: TextStyle(
                        color: isWeekView ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _pageController.animateToPage(
                        1,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                      toggleView();
                    },
                    child: Text(
                      'Month',
                      style: TextStyle(
                        color: !isWeekView ? Colors.white : Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    isWeekView = index == 0;
                  });
                },
                children: [
                  WeekViewPage(),
                  MonthViewPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WeekViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> daysOfWeek = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

    return Stack(
      children: [
        Positioned(
          top: 10,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Text(
                'Week Analysis',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                DateFormat('MMMM yyyy').format(DateTime.now()),
                style: TextStyle(fontSize: 20), // Add this line
              ),
            ],
          ),
        ),
        Positioned(
          top: 40,
          left: 0,
          right: 0,
          child: Container(
            height: 140,
            child: ListView.builder(
              itemCount: daysOfWeek.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 140,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            color: Color.fromARGB(255, 104, 7, 107),
                            child: Text(
                              daysOfWeek[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class MonthViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String monthYearText = DateFormat('MMMM yyyy').format(DateTime.now());

    return Stack(
      children: [
        Positioned(
          top: 10,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Text(
                'Month Analysis',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                monthYearText,
                style: TextStyle(fontSize: 20), // Add this line
              ),
            ],
          ),
        ),
        Positioned(
          top: 40,
          left: 0,
          right: 0,
          child: Container(
            height: 140,
          ),
        ),
      ],
    );
  }
}
