import 'package:flutter/material.dart';

import 'DataModel.dart';


class Pages extends StatefulWidget {

  final List<BookModel> bookModel;
  int index;
   Pages({Key? key, required this.index, required this.bookModel}) : super(key: key);

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.bookModel[widget.index].num ),
            const SizedBox(width: 50,),
            Expanded(child: Text(widget.bookModel[widget.index].name ,
            maxLines: 1,))

          ],
        ),

        backgroundColor: Colors.green,
      ),

      body: PageView(
        children: [SingleChildScrollView(child: Center(child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(widget.bookModel[widget.index].lyrics, style: const TextStyle( fontSize: 30),textAlign: TextAlign.center , ),
        ))),]
      ),

      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag: 'b1',
            onPressed: (){
              setState((){
                if(widget.index!=0){
                  widget.index--;

                }

              });
            },
            child: const Icon(Icons.arrow_back),

          ), FloatingActionButton(
            heroTag: 'b2',
            onPressed: (){
              setState((){
                if(widget.index!= widget.bookModel.length-1){
                  widget.index++;

                }

              });
            },
            child: const Icon(Icons.arrow_forward),

          )
        ],
      )




    );
  }
}
