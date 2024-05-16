import 'package:air_buddy/feature/map/presentation/viewmodels/map_viewModel.dart';
import 'package:core_ui/widgets/elements/tests/normal_text.dart';
import 'package:core_ui/widgets/elements/tests/title_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MakerLocationCustom extends ConsumerWidget {
  final String? name;
  final String? aqi;

  const MakerLocationCustom({super.key, this.name, this.aqi});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final mapVM = ref.watch(mapViewModelProvider.notifier);
    return GestureDetector(
      onTap: (){
        mapVM.setMarkerLocationBox(name!, aqi!);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
            child: NormalText(
          title: aqi!,
          textSize: TextSize.NORMAL,
        )),
      ),
    );
  }
}