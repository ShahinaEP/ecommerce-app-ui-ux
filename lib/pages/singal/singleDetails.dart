import 'package:flutter/material.dart';
import 'package:uiorus/const-class/const-value.dart';

// class SingleDetails extends StatelessWidget {
//
//   const SingleDetails({Key? key}) : super(key: key);
//     get finalAngle => 0.0;
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: Constants().custom_appbar(Icons.arrow_back_ios_new, "Men's Shoes", Icons.shop, Colors.black),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//
//             Stack(
//               alignment: AlignmentDirectional.bottomCenter,
//               children: [
//                 Center(
//                   child: SizedBox(
//                     width: size.width,
//                     height: 200,
//                     child:  Image.asset('images/shoes_new_1.png',)
//
//                     // Image.asset('images/shoenew1.png'),
//                   ),
//                 ),
//                 CircleAvatar(
//                   radius: 27,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: const[
//                       Icon(Icons.arrow_left),
//                       Icon(Icons.arrow_right),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }

class SingleDetails extends StatefulWidget {
  const SingleDetails({Key? key}) : super(key: key);

  @override
  State<SingleDetails> createState() => _SingleDetailsState();
}

class _SingleDetailsState extends State<SingleDetails>
    with SingleTickerProviderStateMixin {
  String? firstHalf;
  String? secondHalf;
  String? textValue =
      'Lorem ipsum dolor sit amet, consect adipi scing elit. Quisque et nisi purus. Vestibulum vehicula posuere erat nec rutrum. Sed sapien metus, gravida eu ullamcorper ut, laoreet in neque. Fusce vestibulum rutrum risus in vehicula. Proin erat purus, pulvinar at placerat non, volutpat vel nibh. Vivamus nec porta massa, sagittis maximus purus. In massa quam, laoreet id ipsum nec, laoreet maximus mi. Donec commodo volutpat mauris et elementum. Fusce nisl ante, aliquet et justo id, euismod luctus lorem. Maecenas vel lacus accumsan mauris consequat semper sed ac mauris. Mauris convallis, augue eget commodo rutrum, velit dui posuere magna, quis eleifend nibh lectus quis dolor. In hac habitasse platea dictumst. Etiam eget lacinia elit. Vivamus sagittis quam a odio molestie blandit. Donec tincidunt rutrum sapien. ';
  bool flag = true;
  late AnimationController animationController;
  int selectItem = 0;
  List categoryList = [
    'images/shoes_new_3.png',
    'images/shoes_new_4.png',
    'images/shoes_new_3.png',
  ];
  List sizeList = [
    '40',
    '41',
    '42',
    '43',
    '44',
    '45',
    '46',
    '47',
    '48',
  ];
  int sizeItem = 0;

  @override
  void initState() {
    if (textValue!.length > 60) {
      firstHalf = textValue!.substring(0, 60);
      secondHalf = textValue!.substring(60, textValue!.length);
    } else {
      firstHalf = textValue;
      secondHalf = "";
    }
    super.initState();
      animationController =  AnimationController(
        vsync: this,
        duration:  Duration(seconds: 7),
      );

      animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Constants().custom_appbar(
          Icons.arrow_back_ios_new, "Men's Shoes", Icons.shop_outlined, Colors.black),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Center(
                  child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                          height: 250,
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(130),
                          ),
                          child:AnimatedBuilder(
                            animation: animationController,
                            builder: (BuildContext context, index)  {

                              return  Transform.rotate(
                                angle: animationController.value * 1.3,
                                child: Image.asset('images/shoes_new_1.png'),
                              );
                            },
                          ),

                      )),
                ),
                Image.asset(
                  'images/frem.png',
                ),
                CircleAvatar(
                  radius: 27,
                  backgroundColor: const Color(0xffE35239),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.arrow_left,
                        size: 27,
                        color: Colors.white,
                      ),
                      Icon(Icons.arrow_right,
                        size: 27,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),

            const SizedBox(
              height: 30,
            ),

            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Nike Air Max Pre-Day',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rate_sharp,
                          color: Color(0xffFFB03B),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          '5.0',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '(1120 Reviews)',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),

                    secondHalf!.isEmpty
                        ? Text(firstHalf!)
                        : Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: <Widget>[
                              Text(
                                flag
                                    ? ("${firstHalf!}...")
                                    : (firstHalf! + secondHalf!),
                                style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade500),
                              ),
                              InkWell(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Text(
                                      flag ? "Read More" : "Read Less",
                                      style: const TextStyle(
                                          fontSize: 19,
                                          color: Color(0xffF25E39),
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                onTap: () {
                                  setState(() {
                                    flag = !flag;
                                  });
                                },
                              ),
                            ],
                          ),

                    const SizedBox(
                      height: 25,
                    ),

                    const Text(
                      'Select Color:',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: size.width * 1,
                      height: 80,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: categoryList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    color: const Color(0xfff7f7f7),
                                    boxShadow: const [
                                      BoxShadow(
                                          blurRadius: 72,
                                          color: Color(0xffe6e6e6),
                                          offset: Offset(19, 19)),
                                      BoxShadow(
                                          blurRadius: 72,
                                          color: Color(0xffe6e6e6),
                                          offset: Offset(-19, -19)),
                                    ],
                                    gradient: const LinearGradient(
                                        stops: [1, 0],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Color(0xffdedede),
                                          Color(0xffffffff)
                                        ]),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(24)),
                                    border: Border.all(
                                      width: 2,
                                      color: selectItem == index
                                          ? const Color(0xffE35239)
                                          : Colors.white,
                                    )),
                                child: InkWell(
                                  child: Image.asset(
                                      categoryList[index].toString()),
                                  onTap: () {
                                    setState(() {
                                      selectItem = index;
                                      // print(selectItem);
                                    });
                                  },
                                ),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Size:", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const[
                            Text("EU",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              // color: Colors.grey
                            ),),
                            SizedBox(width:8,),
                            Text("US",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey
                            ),),
                            SizedBox(width: 8,),
                            Text("Uk",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                            ),),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    SizedBox(
                      width: size.width * 1,
                      height: 60,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: sizeList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: const Color(0xfff7f7f7),
                                    boxShadow: const [
                                      BoxShadow(
                                          blurRadius: 72,
                                          color: Color(0xffe6e6e6),
                                          offset: Offset(19, 19)),
                                      BoxShadow(
                                          blurRadius: 72,
                                          color: Color(0xffe6e6e6),
                                          offset: Offset(-19, -19)),
                                    ],
                                    gradient: LinearGradient(
                                        stops:const [0, 1],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: sizeItem == index
                                            ?const [
                                                Color(0xffE35239),
                                                Color(0xffE35239)
                                              ]
                                            : const[
                                                Color(0xffdedede),
                                                Color(0xffffffff)
                                              ]),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    border: Border.all(
                                      width: 3,
                                      color: sizeItem == index
                                          ? const Color(0xffE35239)
                                          : Colors.white,
                                    )),
                                child: InkWell(
                                  child: Center(child: Text(sizeList[index].toString(),style: TextStyle(
                                    color:  sizeItem == index?Colors.white:Colors.grey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),)),
                                  onTap: () {
                                    setState(() {
                                      sizeItem = index;
                                      // print(selectItem);
                                    });
                                  },
                                ),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // SizedBox(
                    //     width: MediaQuery.of(context).size.width * 1,
                    //     height: 60,
                    //     child: ListView.builder(
                    //         scrollDirection: Axis.horizontal,
                    //         itemCount: categoryList.length,
                    //         itemBuilder: (context, index) {
                    //           return Padding(
                    //             padding: const EdgeInsets.fromLTRB(6, 10, 6, 10),
                    //             child: Container(
                    //               decoration: BoxDecoration(
                    //                   color: selectItem == index
                    //                       ? Constants().primaryValueColor
                    //                       : Colors.white,
                    //                   borderRadius:
                    //                   const BorderRadius.all(Radius.circular(120)),
                    //                   border: Border.all(
                    //                     // width: 1.0,
                    //                     // assign the color to the border color
                    //                       color: selectItem == index
                    //                           ? Colors.transparent
                    //                           : Constants().primaryValueColor)),
                    //               child: Padding(
                    //                 padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    //                 child: InkWell(
                    //                   child: Text(
                    //                     categoryList[index],
                    //                     style: TextStyle(
                    //                         color: selectItem == index
                    //                             ? Colors.white
                    //                             : Constants().primaryValueColor,
                    //                         fontWeight: FontWeight.w700,
                    //                         fontSize: 17),
                    //                   ),
                    //                   onTap: () {
                    //                     setState(() {
                    //                       selectItem = index;
                    //                       print(selectItem);
                    //                     });
                    //                   },
                    //                 ),
                    //               ),
                    //             ),
                    //           );
                    //         })),
                  ],
                ),
              ),
            ),
            // AnimatedBuilder(
            //   animation: animationController,
            //   builder: (BuildContext context, index)  {
            //
            //     return  Transform.rotate(
            //       angle: animationController.value * 6.3,
            //         child: Image.asset('images/shoes_new_1.png'),
            //     );
            //   },
            // ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey.shade100,
        height: 100,
        child: Stack(
          children: [
            Positioned(
              bottom: -5,
              left: -4,
              child: Card(
                elevation: 0,
                color:const Color(0xff272320),
                // clipBehavior: Clip.none,
                // shadowColor: Color(0xffE7E7E9),
                shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                child: SizedBox(
                  width: size.width,
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:const [

                             Text('Price',style: TextStyle(
                              color: Color(0xff8D8A88),
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                            ),),
                             Text('\$129.00',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                            ),)
                          ],
                        ),
                        ElevatedButton(
                            onPressed: (){},
                            style:ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffF25E38),
                              shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                            ) ,
                            child: const SizedBox(
                              width: 125,
                              height: 50,
                              child:  Center(
                                child: Text('Add to Bag', style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20
                                ),),
                              ),
                            )
                        )
                      ],
                    ),
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
// color: Colors.red,
// border: Border.all(
//     width: 2, color: const Color(0xffE35239))
// border: Border(
//   left: BorderSide(
//     color: Colors.green,
//     width: 3,
//
//   ),
//   bottom: BorderSide(
//     color: Colors.green,
//     width: 6,
//   ),
//   top: BorderSide(
//     color: Colors.green,
//     width: 1,
//   ),
//   right: BorderSide(
//   color: Colors.green,
//   width: 3,
// ),
// ),

// borderRadius: BorderRadius.circular(20),
// ),