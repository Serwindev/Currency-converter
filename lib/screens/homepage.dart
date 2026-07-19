import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _moneyValue = 0;
  int maxValue = 100000;
  double usdValue = 0;
  String text = "Poor boy, enter the money";
  final moneyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Not your wallet"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          SizedBox(height: 100,),
          Container(
            margin: EdgeInsets.all(10),
            child: 
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container( 
                  height: 300,
                  width: 420,
                  decoration: BoxDecoration(
                    color: Colors.amber[50],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5
                    )
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Text(
                        "IND - Rs ₹ ",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 24
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "Select from slider or Enter money",
                        style: TextStyle(
                          fontSize: 16
                        ),
                      ),
                      SizedBox(
                        width: 300,
                        child: Slider(
                        value: _moneyValue,
                        max: maxValue.toDouble(),
                        onChanged: (double value) {
                          setState(() {
                            _moneyValue = value;
                            moneyController.text = value.round().toString();
                          });
                        }
                      ),
                      ),
                      SizedBox(
                        width: 300,
                        child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter money"
                        ),
                        controller: moneyController,
                        onChanged: (value) {
                          if (value.endsWith(".")) {
                            value = value.replaceFirst(".", ' ');
                          }
                          final amount = int.tryParse(value);

                        if (amount != null && amount <= maxValue) {
                          if (int.tryParse(value)! <= maxValue) {
                            setState(() {
                              _moneyValue = double.tryParse(value)?? 0;
                            });
                          } 
                        }
                        },
                      ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 40,),
                ElevatedButton(  
                onPressed: () {
                  setState(() {
                    if (_moneyValue <= 95000) {
                      usdValue = _moneyValue / 96.32;
                      text = "You have \$${usdValue.toStringAsPrecision(3)} worth of money";
                    } else {
                      text = "That's actually huge sum of money bro!!";
                    }
                  });
                  

                }, 
                child: Icon(
                  Icons.currency_exchange
                )),
                SizedBox(width: 40,),
                Container(
                  height: 300,
                  width: 420,
                  decoration: BoxDecoration(
                    color: Colors.amber[50],
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5
                    )
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Text(
                        "USD - \$",
                        style: TextStyle(
                          fontSize: 24
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "Data taken from Real-life",
                        style: TextStyle(
                          fontSize: 16
                        ),),
                        SizedBox(height: 10,),
                      Text(
                        text,
                        style: TextStyle(
                          fontSize: 18
                        ),),
                      SizedBox(height: 10,),
                      Text("Items you could gift me with these money:", style: TextStyle(fontSize: 16, decoration: TextDecoration.underline),),

                      SizedBox(height: 10,),
                      Row( 
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 190,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(child: Text("${(usdValue/1.2).toInt()} - candies (cost: \$1.2)")),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                width: 190,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(child: Text("${(usdValue/5).toInt()} - Latte (cost: \$5)")),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                width: 190,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(child: Text("${(usdValue/1000).toInt()} - iPhone 16 (cost: \$1000)")),
                              )
                              
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              Container(
                                width: 190,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(child: Text("${(usdValue/12).toInt()} - pizzas (cost: \$12)")),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                width: 190,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(child: Text("${(usdValue/350).toInt()} - Nothing 3a (cost: \$350)")),
                              ),
                              SizedBox(height: 5,),
                              Container(
                                width: 190,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.amberAccent,
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(child: Text("${(usdValue/1000).toInt()} - Macbook (cost: \$1,000)")),
                              )
                            ],
                          ),
                        ],
                      ),
                      
                    ],
                  )
                ),
              ],
            ),
          ),
          SizedBox(height: 140,),
          Text("Source: Trust me bro")
        ],
      )
    );
  }
}