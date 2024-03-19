import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'join_page_form_field.dart';

class JoinPageBody extends StatelessWidget {
  // Dio dio = Dio();
  JoinPageBody({super.key});

  JoinPageFormField joinPageFormField = JoinPageFormField();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          joinPageFormField,
        ],
      ),
    );
  }
}
