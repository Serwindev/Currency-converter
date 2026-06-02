import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency-conv"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: 
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container( 
                  height: 300,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5
                    )
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Currency 1",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 24
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "Select",
                        style: TextStyle(
                          fontSize: 18
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 40,),
                ElevatedButton(  
                onPressed: () {
                  
                }, 
                child: Icon(
                  Icons.currency_exchange
                )),
                SizedBox(width: 40,),
                Container(
                  height: 300,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5
                    )
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Currency 2",
                        style: TextStyle(
                          fontSize: 24
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        "Select",
                        style: TextStyle(
                          fontSize: 18
                        ),)
                    ],
                  )
                ),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Text("Hello hello")
        ],
      )
    );
  }
}