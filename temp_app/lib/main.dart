import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _imageUrls = [    'https://picsum.photos/id/10/300/300',    'https://picsum.photos/id/20/300/300',    'https://picsum.photos/id/30/300/300',  ];

  int _currentIndex = 0;
  bool _isExpanded = false;
  bool _isExpanded_history = false;
  bool _isExpanded_demo = false;
  bool _isExpanded_points = false;

  @override
  Widget build(BuildContext context) {
    var _notifySimilarProperties=false;
    return Scaffold(
      body: SingleChildScrollView(
        child: MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              SizedBox(
                height: 500,
                child: PageView.builder(
                  itemCount: _imageUrls.length,
                  onPageChanged: (int index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        Image.network(
                          _imageUrls[index],
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.fill,
                        ),
                        Positioned(
                          bottom: 10.0,
                          right: 10.0,
                          child: Row(
                            children: _buildIndicatorDots(),
                          ),
                        ),

                        Container(
                          height: 80.0,
                          margin: const EdgeInsets.only(left: 20.0, top: 420.0),
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _imageUrls.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _currentIndex = index;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(8.0),
                                  width: 60.0,
                                  height: 60.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: index == _currentIndex ? Colors.blue : Colors.grey,
                                      width: 2.0,
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: NetworkImage(
                                        _imageUrls[index],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),

                      ],
                    );
                  },
                ),
              ),

              Container(
                decoration: const BoxDecoration(
                  //94,177,130

                    color:  Color.fromRGBO(196, 223, 155, 1.0),

                ),
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: const Text(
                  'For Sale',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 100, 0, 1.0),
                    //color: Color.fromRGBO(0, 255, 0, 0.5),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'MLS#:E5579076',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: const [
                        SizedBox(width: 10.0),
                        Icon(Icons.shopping_cart),
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 16.0, 0, 16.0),
                child: Text(
                  'Listed for :1,549,586',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(16.0, 0, 0, 16.0),
                child: Text(
                  '2118 Thornridge Cir, Syracuse',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const Text('View on Map'),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.map),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const Text('Get directions'),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.directions),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 16.0),

                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            blurRadius: 3.0,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text('Notify similar properties like this'),
                            ),
                            Switch(
                              value: _notifySimilarProperties=false,
                              activeColor: Colors.green,
                              onChanged: (bool value) {
                                setState(() {
                                  _notifySimilarProperties = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'Property Details',
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          PropertyDetailItem(
                            text: 'Apartment',
                            icon: Icons.apartment,
                          ),
                          SizedBox(width: 8.0),
                          PropertyDetailItem(
                            text: '3 Bedrooms',
                            icon: Icons.king_bed,
                          ),
                          SizedBox(width: 8.0),
                          PropertyDetailItem(
                            text: '2 Bathrooms',
                            icon: Icons.bathtub,
                          ),
                          SizedBox(width: 8.0),
                          PropertyDetailItem(
                            text: 'One more',
                            icon: Icons.add,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.vpn_key),
                      SizedBox(width: 8.0),
                      Text(
                        'Key Facts',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      _isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      size: 30.0,
                    ),
                    onPressed: () {
                      setState(() {
                        _isExpanded = !_isExpanded;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              if (_isExpanded)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 3.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Fact 1'),
                        SizedBox(height: 8.0),
                        Text('Fact 2'),
                        SizedBox(height: 8.0),
                        Text('Fact 3'),
                      ],
                    ),
                  ),
                ),

              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.history),
                      SizedBox(width: 8.0),
                      Text(
                        'Property history',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      _isExpanded_history ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      size: 30.0,
                    ),
                    onPressed: () {
                      setState(() {
                        _isExpanded_history = !_isExpanded_history;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              if (_isExpanded_history)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 3.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Buy/Sell History for 2118 Thornridge Cir, Syracuse,Connecticut 35624'),
                        SizedBox(height: 8.0),

                        SizedBox(height: 8.0),
                        ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade400,
                                    blurRadius: 3.0,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('List: 08.05.2022'),
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text('Sold'),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8.0),
                                    Text('Listed for: \$1,549,586'),
                                    SizedBox(height: 8.0),
                                    Text('Sold for: \$15455'),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade400,
                                    blurRadius: 3.0,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('List: 08.05.2022'),
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text('Sold'),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8.0),
                                    Text('Listed for: \$1,549,586'),
                                    SizedBox(height: 8.0),
                                    Text('Sold for: \$15455'),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade400,
                                    blurRadius: 3.0,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('List: 08.05.2022'),
                                        ElevatedButton(
                                          onPressed: () {},
                                          child: Text('Sold'),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8.0),
                                    Text('Listed for: \$1,549,586'),
                                    SizedBox(height: 8.0),
                                    Text('Sold for: \$15455'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),



                      ],
                    ),
                  ),
                ),

              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.circle_outlined),
                      SizedBox(width: 8.0),
                      Text(
                        'Demographics',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      _isExpanded_demo ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      size: 30.0,
                    ),
                    onPressed: () {
                      setState(() {
                        _isExpanded_demo = !_isExpanded_demo;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              if (_isExpanded_demo)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 3.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Fact 1'),
                        SizedBox(height: 8.0),
                        Text('Fact 2'),
                        SizedBox(height: 8.0),
                        Text('Fact 3'),
                      ],
                    ),
                  ),
                ),


              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.check_circle_outlined),
                      SizedBox(width: 8.0),
                      Text(
                        'Points of Interest',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      _isExpanded_points ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      size: 30.0,
                    ),
                    onPressed: () {
                      setState(() {
                        _isExpanded_points = !_isExpanded_points;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              if (_isExpanded_points)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 3.0,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Fact 1'),
                        SizedBox(height: 8.0),
                        Text('Fact 2'),
                        SizedBox(height: 8.0),
                        Text('Fact 3'),
                      ],
                    ),
                  ),
                ),


              SizedBox(height: 20.0),
              Card(
                elevation: 3.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('My Notes'),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Add Note'),
                    ),
                  ],
                )
              ),

              SizedBox(height: 20.0),
              Container(
                color: Colors.grey.shade100,
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Listing Agent',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Courtney Henry',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Business Monitor',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 16.0,
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Icon(Icons.phone),
                      ],
                    ),
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }



  List<Widget> _buildIndicatorDots() {
    List<Widget> dots = [];

    for (int i = 0; i < _imageUrls.length; i++) {
      dots.add(
        Container(
          width: 10.0,
          height: 10.0,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentIndex == i
                ? Colors.white
                : Colors.white.withOpacity(0.5),
          ),
        ),
      );
    }

    return [
      Positioned(
        bottom: 20.0,
        left: 0.0,
        right: 0.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: dots,
        ),
      ),
    ];
  }

}
class PropertyDetailItem extends StatelessWidget {
  final String text;
  final IconData icon;

  const PropertyDetailItem({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 3.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 8.0),
          Text(
            text,
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}




