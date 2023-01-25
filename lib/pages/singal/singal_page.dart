import 'package:flutter/material.dart';
import 'package:uiorus/custom-page/custom_buttom.dart';

class SingalPage extends StatelessWidget {
  final String? productImage;
  final String? productName;
  final String? productPrice;
   const SingalPage({Key? key,required this.productImage, required this.productName, required this.productPrice}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    print(productImage);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          child: const Icon(Icons.arrow_back, color: Colors.black,size: 30,),
          onTap: (){
            Navigator.pop(context);
          },
        ),
        // leadingWidth: 30,
        title:const Text('Product Details',style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  color: Colors.grey.shade100,
                  width: size.width*1,
                  height: 250,
                  child: SizedBox(
                    width: size.width*0.5,
                      child: Image.asset(productImage.toString())
                  ),
                ),
                Positioned(
                  bottom: -25,
                  right: 05,
                  child: ClipRRect(
                    borderRadius:  BorderRadius.circular(50),
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.grey.shade200,
                      child:const Icon(Icons.favorite_border, size: 35,color: Colors.red,),
                    ),
                  ),
                )
              ],
            ),

            const SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productName.toString(), style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),),
                  const SizedBox(height: 5),
                  const Text('Location: USA | Views 350',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    color: Colors.grey
                  ),),
                  const SizedBox(height: 10),
                      Text('Price \$ $productPrice', style: const TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.w600
                      ),),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          Text('In Stock',style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.w600,
                            fontSize: 17
                          ),),
                          Text('6h ago',style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 17
                          ),),
                        ],
                      ),
                    const Divider(),

                  const SizedBox(height: 55,),
                  const Text('COLOR', style:  TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 21,
                  ),),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius:  BorderRadius.circular(50),
                        child: Container(
                          width: 50,
                          height: 50,
                          color: Colors.black,
                          child:const Icon(Icons.check, size: 35,color: Colors.white,),
                        )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: ClipRRect(
                            borderRadius:  BorderRadius.circular(50),
                            child: Container(
                              width: 50,
                              height: 50,
                              color: Colors.red,
                              // child:const Icon(Icons.check, size: 35,color: Colors.white,),
                            )),
                      ),
                      ClipRRect(
                          borderRadius:  BorderRadius.circular(50),
                          child: Container(
                            width: 50,
                            height: 50,
                            color: Colors.blue,
                            // child:const Icon(Icons.check, size: 35,color: Colors.white,),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: ClipRRect(
                            borderRadius:  BorderRadius.circular(50),
                            child: Container(
                              width: 50,
                              height: 50,
                              color: Colors.greenAccent,
                              // child:const Icon(Icons.check, size: 35,color: Colors.white,),
                            )),
                      ),
                    ]
                  ),
                  const SizedBox(height: 20,),
                  const Text('SIZE', style:  TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 21,
                  ),),
                  const SizedBox(height: 10,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius:  BorderRadius.circular(50),
                            child: Container(
                              width: 50,
                              height: 50,
                              color: Colors.red,
                              child: const Padding(
                                padding:  EdgeInsets.all(9.0),
                                child:  Text('XS',style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25
                                ),),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: ClipRRect(
                              borderRadius:  BorderRadius.circular(50),
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.grey,
                                child: const Padding(
                                  padding:  EdgeInsets.all(9.0),
                                  child:  Text(' S',style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25
                                  ),),
                                ),
                              )),
                        ),
                        ClipRRect(
                            borderRadius:  BorderRadius.circular(50),
                            child: Container(
                              width: 50,
                              height: 50,
                              color: Colors.grey,
                              child: const Padding(
                                padding:  EdgeInsets.all(9.0),
                                child:  Text(' M',style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25
                                ),),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: ClipRRect(
                              borderRadius:  BorderRadius.circular(50),
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.grey,
                                child: const Padding(
                                  padding:  EdgeInsets.all(9.0),
                                  child:  Text(' L',style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25
                                  ),),
                                ),
                              )),
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: ClipRRect(
                              borderRadius:  BorderRadius.circular(50),
                              child: Container(
                                width: 50,
                                height: 50,
                                color: Colors.grey,
                                child: const Padding(
                                  padding:  EdgeInsets.all(9.0),
                                  child:  Text('XL',style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 25
                                  ),),
                                ),
                              )),
                        ),
                      ]
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:  ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: const CustomButtom(
          btnName: 'Add Cart',
          bgColor: Colors.red,
          textStyle: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
