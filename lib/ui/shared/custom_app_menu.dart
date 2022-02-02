import 'package:flutter/material.dart';
import 'package:flutter_web/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Staeful',
            onPressed: () => Navigator.pushNamed(context, '/stateful'),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Contador Provider',
            onPressed: () => Navigator.pushNamed(context, '/provider'),
            color: Colors.black,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Otra Pagina',
            onPressed: () => Navigator.pushNamed(context, '/test'),
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
