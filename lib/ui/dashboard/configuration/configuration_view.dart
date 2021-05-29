import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pusher/cubit/dropdown/dropdown_cubit.dart';
import 'package:pusher/styles/colors.dart';
import 'package:pusher/ui/dashboard/configuration/device_selection_view.dart';
import 'package:pusher/ui/components/section_title.dart';

class ConfigurationView extends StatelessWidget {
  ConfigurationView({
    Key? key,
  }) : super(key: key);

  late DropdownCubit dropdownCubit;

  @override
  Widget build(BuildContext context) {
    dropdownCubit = BlocProvider.of<DropdownCubit>(context);

    return BlocBuilder<DropdownCubit, bool>(
      builder: (context, expandedState) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SectionTitle(
                  title: "Configuration",
                ),
                IconButton(
                  onPressed: () {
                    dropdownCubit.toggleExpand();
                  },
                  icon: (expandedState)
                      ? const Icon(Icons.arrow_drop_down_rounded)
                      : const Icon(Icons.arrow_drop_up_rounded),
                ),
              ],
            ),
            Visibility(
              visible: expandedState,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Column(
                        children: [
                          const DeviceSelectionView(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
