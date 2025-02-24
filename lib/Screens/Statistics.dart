import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Statistics extends StatefulWidget {
  const Statistics({super.key});

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  List Day = ['Day', 'Weekly', 'Monthly'];
  int index_color = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Statistics',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...List.generate(3, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              index_color = index;
                            });
                          },
                          child: Container(
                            height: 40,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: index_color == index 
                              ? Color(0xFFFDC603)
                              :Colors.white,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              Day[index],
                              style: TextStyle(
                                color: index_color == index 
                              ? Colors.white
                              :Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
