import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'List Tile Practise'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    var arrNames=["Waqar","Kamran","Saif","Saad","Umar","Husnain"];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: ListView.separated(itemBuilder: (context, index){
              return ListTile(
                leading: const CircleAvatar(
                  // child: Text(arrNames[index].characters.first),
                  backgroundImage: AssetImage ("assets/images/ic_black_icon.png"),
                  // radius: 50,
                ),
                title: Text(arrNames[index], style: const TextStyle(color: Colors.deepPurpleAccent),),
                subtitle: const Text("Phone", style: TextStyle(color: Colors.purpleAccent),),
                trailing: const Icon(Icons.add, color: Colors.purpleAccent,shadows: [Shadow(color: Colors.black,)],),
              );
            }, separatorBuilder: (context, index){
              return const Divider(height: 10,thickness: 2, color: Colors.black12,);
            }, itemCount: arrNames.length),
          ),

          Expanded(
            flex: 2,
            child: ListView.separated(itemBuilder: (context, index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 50,
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                          width: 40,
                          child: CircleAvatar(backgroundImage: AssetImage("assets/images/ic_white_icon.png"),
                          radius: 25,),
                        ),
                        Text(arrNames[index].characters.first,style: const TextStyle(fontSize: 6.5),)
                      ],
                    )
                  ),
                ),
                title: Text(arrNames[index], style: const TextStyle(color: Colors.deepPurpleAccent),),
                subtitle: const Text("Phone Number", style: TextStyle(color: Colors.purpleAccent),),
                trailing: const Icon(Icons.add, color: Colors.purpleAccent,shadows: [Shadow(color: Colors.black,)],),
              );
            }, separatorBuilder: (context, index){
              return const Divider(height: 10,thickness: 2, color: Colors.black12,);
            }, itemCount: arrNames.length),
          ),
        ],
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
