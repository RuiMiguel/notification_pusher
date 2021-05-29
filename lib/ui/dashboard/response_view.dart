import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pusher/ui/components/section_title.dart';

class ResponseView extends StatelessWidget {
  const ResponseView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SectionTitle(
              title: "Response",
            ),
          ],
        ),
        Container(
          width: double.infinity,
          height: 200,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}
