import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),backgroundColor: Colors.greenAccent,
        actions: [
          BootstrapRow(
              children: [
                BootstrapCol(
                  sizes:' col-12 col-md-8 offset-md-2 col-lg-6 offset-lg-3',
                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.account_box_outlined),),
                ),
                BootstrapCol(
                    sizes:' col-12 col-md-8 offset-md-2 col-lg-6 offset-lg-3',
                    child: IconButton(onPressed: (){}, icon: const Icon(Icons.email),)),
              ],
          )
          ]
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.grey
                  ), 
                  accountName: Text("Sudipta"),
                  accountEmail: Text("sudipta@gmail.com"),
                ),
            ),
            ListTile(leading: Icon(Icons.contact_mail_outlined),title: Text("Contact"),),
            ListTile(leading: Icon(Icons.email),title: Text("Mail"),),
            ListTile(leading: Icon(Icons.account_balance_outlined),title: Text("Account"),),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BootstrapContainer(
            fluid: true,
            padding: const EdgeInsets.all(16),
            children: [
              BootstrapRow(
                  children: [
                    BootstrapCol(
                      sizes:' col-12 col-md-8 offset-md-2 col-lg-6 offset-lg-3',
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Flutter Web.The Basics",style: TextStyle(
                            fontSize:45,
                            fontWeight: FontWeight.bold,
                          ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 16,),
                          Text("Flutter is an open source framework by Google for building beautiful,"
                              " natively compiled, multi-platform applications from a single codebase."
                              "Flutter code compiles to ARM or Intel machine code as well as JavaScript,"
                              " for fast performance on any device."
                          ,
                          style: TextStyle(
                            fontSize:20,
                          ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 16,),

                        ],
                      ),
                    ),
                    BootstrapCol(
                      sizes: 'col-12 col-md-8 offset-md-2 col-lg-6 offset-lg-3',
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children:[ElevatedButton(
                        onPressed: (){},
                        child: const Text("Join Now"),
                      ),
                      ]
                    ),)
                  ]
              ),
            ],
          ),
        ],
      ),
    );
  }
}