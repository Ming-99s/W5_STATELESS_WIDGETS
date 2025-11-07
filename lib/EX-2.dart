import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
enum ButtonType{primary, secondary, disable}
enum IconPosition {left,right}

Color _getbuttonColor(ButtonType type){
  switch(type){
    case ButtonType.primary:
      return Colors.blue;
    case ButtonType.secondary:
      return Colors.green;
    case ButtonType.disable:
      return Colors.grey;
  }
}
bool _iconPosition(IconPosition pos){
  switch(pos){
    case IconPosition.right:
      return false;
    case IconPosition.left:
      return true;
  }
}


class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Custom buttons'),
      ),
      body: Center(
        child: Padding(padding: EdgeInsets.all(10),
          child: Column(
          children: [

            CustomButton(text: 'Submit', icon: FontAwesomeIcons.check,),
            CustomButton(text: 'time', icon: FontAwesomeIcons.clock,pos:IconPosition.right,type:ButtonType.secondary,),
            CustomButton(text: 'Account', icon: FontAwesomeIcons.codeFork,pos:IconPosition.right,type: ButtonType.disable,)
          ],
        )  
        
        )
        
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final ButtonType type;
  final IconData icon;
  final IconPosition pos;

  const CustomButton({
    required this.text,
    required this.icon,
    this.type = ButtonType.primary,
    this.pos = IconPosition.left,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child:  ElevatedButton(
      onPressed: (){
        
      },
      style:  ElevatedButton.styleFrom(
        backgroundColor:_getbuttonColor(type),
      
      ),
      child:Row(
        textDirection: _iconPosition(pos) ? null : TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: FaIcon(icon),
            padding: EdgeInsets.all(10),
          ),
          Text(text),
      ],)
    
    )

      
    );
   
  }
}

