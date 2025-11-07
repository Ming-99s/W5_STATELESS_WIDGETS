import 'package:flutter/material.dart';
enum ProductsInfo{
  Dart('assets/images/Dart_logo.png' , 'the best object language') 
, Flutter('assets/images/Flutter_logo.png' , 'the best mobile widget library')
,Firebase ('assets/images/Firebase_logo.png' , 'the best cloud database');

  final String pImage;
  final String pDes;

  const ProductsInfo(this.pImage,this.pDes);

}





class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: Center(
       child:  Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment : CrossAxisAlignment.stretch,
          children: [
            Products(product: ProductsInfo.Dart),
            Products(product: ProductsInfo.Flutter),
            Products(product: ProductsInfo.Firebase),


          ],
        ),
        )
      ),
    );
  }
}

class Products extends StatelessWidget {
  final ProductsInfo product;

  const Products({
    required this.product
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(product.pImage),
            width: 100,
          ),
          Text(product.name, style: TextStyle(fontSize: 50),),
          Text(product.pDes)
        ],  
      ),
    );
  }
}