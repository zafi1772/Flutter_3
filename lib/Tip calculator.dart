import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tip_calculator_app/widgets/Simple%20Import%20Fild.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({super.key});

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {


  final formkey = GlobalKey<FormState>();

  final totalBillControler = TextEditingController();
  final totalTipControler = TextEditingController();
  final totalPersonControler = TextEditingController();

  static const Color containercolor = Color(0xffF5F8FB);
  static const Color taxtBlack = Color(0xff232323);
  static const Color taxtLight = Color(0xff717171);
  static const Color clearButtoncolor = Color(0xffFF7511);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tip Calculator",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        centerTitle: true,
        elevation: 3,
        shadowColor: Colors.black.withOpacity(0.3),
        backgroundColor: Colors.white,
      ),


      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Top section
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: containercolor,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                       const Text("Total Bill", style: TextStyle(color: taxtBlack)),
                      Text("\$ ${totalBillControler.text}", style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: taxtBlack)),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Persons", style: TextStyle(color: taxtBlack)),
                          Text("Tip Amount", style: TextStyle(color: taxtBlack)),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("05", style: TextStyle(color: taxtBlack, fontSize: 15,fontWeight: FontWeight.w700)),
                          Text("\$ 20.0", style: TextStyle(color: taxtBlack , fontSize: 15,fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ],
                  ),
                ),
                //Gap
                const SizedBox(
                  height: 10,
                ),
                //per person amount section
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: containercolor,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Amount per Persons", style: TextStyle(color: taxtBlack)),
                      Text("\$ 20.0", style: TextStyle(color: taxtBlack , fontSize: 15,fontWeight: FontWeight.w700)),
                    ],
                  ),
                ),

                // const Spacer(),

                impoetFild(controller: totalBillControler,
                    title: "Total Bill",
                    IconData: Icons.attach_money,
                    hintText: "Enter total Bill"),

                impoetFild(controller: totalTipControler,
                    title: "Tip percentage",
                    IconData: Icons.percent,
                    hintText: "Please enter tip percentage"),
                impoetFild(controller: totalPersonControler,
                    title: "Number of people",
                    IconData: Icons.man,
                    hintText: "Please enter number of people"),


                Row(
                  children: [
                    //Button
                    Expanded(
                      child: GestureDetector(
                        onTap: (){

                        },
                        child: Container(
                          margin:  const EdgeInsets.only(top: 10),
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          alignment: Alignment.center,
                          child: const Text("Calculate", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                        ),
                      ),
                    ),

                    const SizedBox(
                      width: 10,
                    ),

                    GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        margin:  const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 45),
                        decoration: BoxDecoration(
                            color: clearButtoncolor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Text("Clear", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),),
                      ),
                    ),
                  ],
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}
