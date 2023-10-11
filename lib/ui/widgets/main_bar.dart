 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
   const AppBarWidget({super.key});

   @override
   Size get preferredSize => const Size.fromHeight(100);

   @override
   Widget build(BuildContext context) {
     String text = '';
      return AppBar(
        backgroundColor: Colors.white60,
        title: Stack(
          children: [
            Container(
              child: const CupertinoSearchTextField(),
            ),
          ],
        ),
     );
   }
 }


 class SearchTextField extends StatelessWidget {
   const SearchTextField({
     super.key,
     required this.fieldValue,
   });

   final ValueChanged<String> fieldValue;

   @override
   Widget build(BuildContext context) {
     return CupertinoSearchTextField(
       onChanged: (String value) {
         fieldValue('The text has changed to: $value');
       },
       onSubmitted: (String value) {
         fieldValue('Submitted text: $value');
       },
     );
   }
 }
