import 'package:flutter/material.dart';
import 'package:list_tile_practise/utils/Utils.dart';

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
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 24,fontFamily: "FiraSans",fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
          subtitle1: TextStyle(fontSize: 14,fontFamily: "FiraSans",fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.purpleAccent),
        ),
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
                title: Text(arrNames[index], style: mTextSize21(),),
                subtitle: Text("Phone", style: TextStyle(color: Colors.purpleAccent),),
                trailing: const Icon(Icons.add, color: Colors.purpleAccent,shadows: [Shadow(color: Colors.black,)],),
              );
            }, separatorBuilder: (context, index){
              return const Divider(height: 10,thickness: 2, color: Colors.black12,);
            }, itemCount: arrNames.length),
          ),

          const Divider(
              thickness: 5,
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
                    ),
                  ),
                ),
                title: Text(arrNames[index], style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.yellow),),
                subtitle: Text("Number", style:Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.orange),),
                trailing: Icon(Icons.add, color: Colors.purpleAccent,shadows: [Shadow(color: Colors.black,)],),
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
