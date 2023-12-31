import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class QuikInvoiceHeader extends StatelessWidget {
  const QuikInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20,
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xfffafafa),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xff4eb7f2),
          ),
        ),
      ],
    );
  }
}
