import 'package:flutter/material.dart';

class ShiftPlannerListScreen extends StatefulWidget {
  const ShiftPlannerListScreen({super.key});

  @override
  State<ShiftPlannerListScreen> createState() => _ShiftPlannerListScreenState();
}

class _ShiftPlannerListScreenState extends State<ShiftPlannerListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 70,),
          Text("Shift Planner",style: Theme.of(context).textTheme.titleLarge,),
          const SizedBox(height: 10,),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: 10,
                padding: const EdgeInsets.all(12),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.shade300),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(child: const Icon(Icons.calendar_today, size: 46, color: Colors.grey)),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "title",
                                style: Theme.of(context).textTheme.titleSmall
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "date",
                                style:Theme.of(context).textTheme.titleSmall ,
                              ),
                              const SizedBox(height: 2),
                              Text(
                                "address",
                                style: Theme.of(context).textTheme.titleSmall,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle
                                  ),
                                ),
                              ],
                            ),
                            IconButton(onPressed: (){}, icon:Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey)),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
