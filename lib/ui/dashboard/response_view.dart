import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pusher/bloc/sender/sender_bloc.dart';
import 'package:pusher/styles/colors.dart';
import 'package:pusher/ui/components/section_title.dart';

class ResponseView extends StatelessWidget {
  final SenderState state;

  const ResponseView({
    Key? key,
    required this.state,
  }) : super(key: key);

  _printResponse(SenderState state) {
    switch (state.runtimeType) {
      case SenderLoading:
        return "Loading...";
      case SenderSuccess:
        return (state as SenderSuccess).response.toString();
      case SenderError:
        return (state as SenderSuccess).response.toString();
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    SenderBloc senderBloc = BlocProvider.of<SenderBloc>(context);

    return BlocBuilder<SenderBloc, SenderState>(builder: (context, state) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SectionTitle(
                title: "Response",
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "status: $state",
                  style: const TextStyle(fontSize: 14, color: primaryColor),
                ),
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _printResponse(state),
                style: const TextStyle(fontSize: 14, color: primaryColor),
              ),
            ),
          ),
        ],
      );
    });
  }
}
