import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Center(child: Text("Details",style: Theme.of(context).textTheme.titleLarge,)),
            //const SizedBox(height: 10,),
            Expanded(child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shift time summary",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              const Icon(Icons.calendar_today),
                              Text('Planned',
                                  style: Theme.of(context).textTheme.titleSmall),
                              Text("23h",
                                  style: Theme.of(context).textTheme.titleLarge),
                            ],
                          ),
                          Column(
                            children: [
                              const Icon(Icons.circle_sharp),
                              Text('Used',
                                  style: Theme.of(context).textTheme.titleSmall),
                              Text("20h",
                                  style: Theme.of(context).textTheme.titleLarge),
                            ],
                          ),
                          Column(
                            children: [
                              const Icon(Icons.pause),
                              Text('Break',
                                  style: Theme.of(context).textTheme.titleSmall),
                              Text("1h 45min",
                                  style: Theme.of(context).textTheme.titleLarge),
                            ],
                          ),
                          Column(
                            children: [
                              const Icon(Icons.car_repair_sharp),
                              Text('Worked',
                                  style: Theme.of(context).textTheme.titleSmall),
                              Text("18h 15min",
                                  style: Theme.of(context).textTheme.titleLarge),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
