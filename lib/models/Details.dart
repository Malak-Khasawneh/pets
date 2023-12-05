import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // List of items for suggestions
  final List<String> items = [
    'Food',
    'Resorts',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SearchAnchor(
                  builder: (BuildContext context, SearchController controller) {
                    return SearchBar(
                      controller: controller,
                      padding: const MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 16.0),
                      ),
                      onTap: () {
                        controller.openView();
                      },
                      onChanged: (_) {
                        controller.openView();
                      },
                    );
                  },
                  suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                    return List<ListTile>.generate(items.length, (int index) {
                      final String item = items[index];
                      return ListTile(
                        title: Text(
                          item,
                          style: TextStyle(color: Color(0xff8F6FC2)),
                        ),
                        onTap: () {
                          setState(() {
                            controller.closeView(item);
                          });
                        },
                      );
                    });
                  },
                ),
                SizedBox(height:20),
                SizedBox(
                    height: 600,
                    width: 350,
                    child:  GridView.builder(
                        itemCount: 6,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)
                                    ,color: Colors.white),

                              ),
                             Text(list[index]),
                            ],
                          );
                        })
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
  List<String> list=[
    'mm','ll','dd',    'mm','ll','dd'

  ];
}
