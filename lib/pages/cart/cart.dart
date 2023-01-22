import 'package:flutter/material.dart';
import 'package:uiorus/const-class/list_value.dart';
import 'package:uiorus/pages/singal/singal_page.dart';

import '../../const-class/const-value.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List cartlist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Constants().custom_appbar(
          Icons.arrow_back, 'My Cart', Icons.delete, const Color(0xffB7B9C8)),
      // backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Card(
              color: Color(0xffE7E7E9),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: ListValue().shoes.length,
                      itemBuilder: (context, index) {
                        cartlist.add(1);
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                          child: Card(
                            // color: Colors.grey.shade300,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            child: SizedBox(
                              height: 120,
                              // color: Colors.red,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                        ListValue().shoes[index]['image']),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        InkWell(
                                          child: Text(
                                            ListValue().shoes[index]['name'],
                                            style: const TextStyle(
                                                color: Color(0xff5E6394),
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (context)=> SingalPage(
                                                productImage:ListValue().shoes[index]['image'],
                                                productName: ListValue().shoes[index]['name'],
                                                productPrice: ListValue().shoes[index]['price'],
                                            )));
                                          }
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              '\$ ',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w900,
                                                color: Color(0xff4249AC),
                                              ),
                                            ),
                                            Text(
                                              ListValue().shoes[index]['price'],
                                              style: const TextStyle(
                                                  color: Color(0xff4249AC),
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      InkWell(
                                        child: Card(
                                          elevation: 9,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                          child: const Icon(
                                            Icons.remove,
                                            size: 30,
                                          ),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            if (cartlist[index] != 0) {
                                              cartlist[index]--;
                                            }
                                          });
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Text(
                                          cartlist[index].toString(),
                                          style: const TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      InkWell(
                                        child: Card(
                                          color: const Color(0xffA1DBF5),
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                          child: const Icon(
                                            Icons.add,
                                            size: 30,
                                          ),
                                        ),
                                        onTap: () {
                                          setState(() {
                                            cartlist[index]++;
                                          });
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RichText(
                          text: const TextSpan(
                              text: 'Subtotal:',
                              style: TextStyle(
                                color: Color(0xff9D9EB1),
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                              children: <TextSpan>[
                            TextSpan(
                              text: ' \$2540',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 23),
                              // recognizer: TapGestureRecognizer()
                              //   ..onTap = () {
                              //     // navigate to desired screen
                              //   }
                            )
                          ])),
                      RichText(
                          text: const TextSpan(
                              text: 'Taxes:',
                              style: TextStyle(
                                color: Color(0xff9D9EB1),
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                              children: <TextSpan>[
                            TextSpan(
                              text: ' \$40',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 23),
                              // recognizer: TapGestureRecognizer()
                              //   ..onTap = () {
                              //     // navigate to desired screen
                              //   }
                            )
                          ])),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Theme(
      //   data:  Theme.of(context).copyWith(
      //     canvasColor: Colors.red,
      //   ),
      //   child: Card(
      //     elevation: 20,
      //     // color: Color(0xffE7E7E9),
      //     clipBehavior: Clip.none,
      //     shadowColor: Color(0xffE7E7E9),
      //     shape:
      //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      //     child: SizedBox(
      //       height: 90,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.start,
      //             children:const [
      //                Text('\$',style: TextStyle(
      //                 // color: Color(0xff9D9EB1),
      //                 fontWeight: FontWeight.w600,
      //                 fontSize: 10,
      //               ),),
      //                Text('129.00',style: TextStyle(
      //                 // color: Color(0xff9D9EB1),
      //                 fontWeight: FontWeight.w900,
      //                 fontSize: 25,
      //               ),)
      //             ],
      //           ),
      //           ElevatedButton(
      //               onPressed: (){},
      //               style:ElevatedButton.styleFrom(
      //                 backgroundColor: Color(0xff4E55AF),
      //                 shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      //               ) ,
      //               child: Row(
      //                 children: [
      //                  Image.asset("images/icon.png"),
      //                   const Text('Check Out', style: TextStyle(
      //                     fontWeight: FontWeight.w600
      //                   ),)
      //                 ],
      //               )
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
