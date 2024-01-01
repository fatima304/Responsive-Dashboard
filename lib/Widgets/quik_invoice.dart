import 'package:admin_dashboard/Widgets/custom_container.dart';
import 'package:flutter/material.dart';

class QuikInvoice extends StatelessWidget {
  const QuikInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: 24,
      child: Column(
        children: [
          QuikInvoice(),
        ],
      ),
    );
  }
}

