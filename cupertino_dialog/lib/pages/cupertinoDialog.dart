
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // creating a cupertino dialog 

  Future <void> show()async{
    showCupertinoDialog(context: context, 
    builder: (context)=> CupertinoAlertDialog(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('YouTube',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          const SizedBox(height: 10,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ 
              Image.asset('assets/icons/youtube.png',width: 30,height: 30,),
              const SizedBox(width: 10,),
              const Text('Version 1.0.0'),
          ],)

      ],),
      actions: [
        CupertinoDialogAction(child: const Text('@SSHegde.Visuals',style: TextStyle(fontSize: 10),),
        onPressed: ()=>Navigator.of(context).maybePop(),
        )
      ],
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Cupertino Demo'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: show,
        tooltip: 'Show',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
