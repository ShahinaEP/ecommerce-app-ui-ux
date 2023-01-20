import 'package:flutter/material.dart';
import 'package:uiorus/const-class/const-value.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.title,required this.productList, this.bgColor}) : super(key: key);
  final String title;
  final List productList;
  final Color? bgColor ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Expanded(
              child: Text(
                title,
                // title.take(8).toString(),
                style: const TextStyle(
                    fontSize: 21, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Container(
            color: bgColor,
            height: 375,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      // color: Colors.red,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                      shadowColor: Colors.grey,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                productList[index]['image'].toString(),
                                width: MediaQuery.of(context).size.width * 0.6,
                                // height: 200,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      productList[index]['name'].length > 12 ? productList[index]['name'].substring(0, 20)+'...' :productList[index]['name'].toString()
                                      ,
                                      style: TextStyle(
                                          color: Constants().primaryValueColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      productList[index]['price'].toString(),
                                      style:const TextStyle(
                                        // color: Constants().iconColors2,
                                          fontSize: 21,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.star_rate_rounded,
                                          color: Constants().iconColors,
                                        ),
                                        Icon(
                                          Icons.star_rate_rounded,
                                          color: Constants().iconColors,
                                        ),
                                        Icon(
                                          Icons.star_rate_rounded,
                                          color: Constants().iconColors,
                                        ),
                                        Icon(
                                          Icons.star_rate_rounded,
                                          color: Constants().iconColors,
                                        ),
                                        Icon(
                                          Icons.star_rate_rounded,
                                          color: Constants().iconColors,
                                        ),
                                        Text('(${productList[index]['rate']})')
                                      ],
                                    )
                                  ],
                                ),
                              )

                            ])),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
