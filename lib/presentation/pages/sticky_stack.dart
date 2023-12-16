import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/presentation/widget/sticky_draggable.dart';
import 'package:pin_bord/provider/sticky_provider.dart';
import 'package:pin_bord/routes/app_router.dart';

@RoutePage()
class StickyStackPage extends StatefulWidget {
  const StickyStackPage({Key? key}) : super(key: key);

  @override
  State<StickyStackPage> createState() => _StickyStackPageState();
}

class _StickyStackPageState extends State<StickyStackPage> {
  @override
  Widget build(BuildContext context) {
    // final router = AutoRouter.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AutoRouter.of(context).push(CreateNotePageRoute());
        },
        child: const Icon(Icons.note_add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Consumer(
        builder: (context, ref, child) {
          final notifier = ref.watch(stickyProvider);
          return Stack(
            children: notifier.notes
                .map(
                  (sticky) => StickyDraggable(
                    sticky: sticky,
                    onTap: () async {
                      await notifier.itemToTop(sticky.id);
                    },
                    updatePosition: (offset, id) async => await notifier.updatePosition(offset, id),
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
