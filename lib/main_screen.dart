import 'package:flutter/material.dart';
import 'package:fluter_agrimarket/model/product.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // title: const Text('Main Screen'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // if (constraints.maxWidth > 600) {
          //   return const DesktopMainScreen();
          // } 
          return const BodyMobile();
        },
      ),
    );
  }
}

class BodyMobile extends StatelessWidget {
  const BodyMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // get the size of the screen
    Size size = MediaQuery.of(context).size;
    const double defaultSpacing = 20;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.2,
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: defaultSpacing,
                    right: defaultSpacing,
                    bottom: 30 + defaultSpacing,
                  ),
                  height: size.height * 0.2 - 25,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      const Text(
                        'Hi Sabik!',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const Spacer(),
                      // Image.asset("assets/images/user.png"),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(28),
                        child: Image.asset("assets/images/user.png"),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: defaultSpacing),
                    padding: const EdgeInsets.symmetric(horizontal: defaultSpacing),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Colors.green.withOpacity(0.20),
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: Colors.green.withOpacity(0.5),
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]
            )
          ),
          const SizedBox(height: 36),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultSpacing),
            child: Row(
              children: <Widget>[
                const Text(
                  "Recommended",
                  style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text(
                    "More",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: defaultSpacing),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: productList.map((product) {
                return InkWell(
                  onTap: () {
                    
                  },
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: defaultSpacing,
                      top: defaultSpacing / 2,
                      bottom: defaultSpacing * 2.5,
                    ),
                    width: size.width * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          child: Image.asset(product.image, fit: BoxFit.cover),
                          height: size.height * 0.3,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(defaultSpacing / 2),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 50,
                                color: Colors.green.withOpacity(0.23),
                              ),
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.name,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    product.price,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.green,
                                    ),
                                  ),
                                ]
                              )
                              
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                );
              }).toList(),
            ),
          ), 
        ],
      )
    );
  }
}