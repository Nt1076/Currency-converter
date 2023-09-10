// ignore: implementation_imports
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
    const CurrencyConverterMaterialPage({super.key});
    
  

  @override
  State<CurrencyConverterMaterialPage> createState() =>
  
     _CurrencyConverterMaterialPageState(); 
     }


class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {
   double result=0;
   
   final TextEditingController textEditingController=TextEditingController();
 
  @override
  
  Widget build(BuildContext context) {
    
     
    final  border = OutlineInputBorder(
                    borderSide:const BorderSide(color: Colors.black,
                    width: 2.0,
                    style: BorderStyle.solid
                    ),
                    borderRadius:const BorderRadius.all(Radius.circular(40)) 
                  );
    return  Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title:const Text('Currency Converter',style: TextStyle(
          fontSize: 30
        ),),
        centerTitle: true,

      ),
        body:Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              //int -> string integervalue.tostring()
              //string -> int int.parse(stringvalue)
              
              Text('INR ${result !=0 ?result.toStringAsFixed(2):result.toStringAsFixed(0)}',
              style:const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: textEditingController,
                  style:const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                 
                   hintText: 'Please enter the amount in USD',
                   hintStyle:const TextStyle(
                    color: Colors.black,
                   ),
                      prefixIcon:const  Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder:border,
                    enabledBorder:border ,
              
                  
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
             Padding(padding: const EdgeInsets.all(15),
             child:  ElevatedButton(onPressed: (){
                      
                      setState(() {
                        result=double.parse(textEditingController.text)*82 ;
                      });
               },
               
               
               
             
               style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 45),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
               ),  child: const Text('CONVERT'),
               ),
             ),
            ],
          ),
        ),
        );
  }
}