import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pin_bord/models/sticky/sticky.dart';
import 'package:pin_bord/presentation/widget/create_or_update_sticky.dart';
import 'package:pin_bord/provider/note_color_provider.dart';
import 'package:pin_bord/provider/sticky_provider.dart';

@RoutePage()
class CreateNotePage extends ConsumerStatefulWidget {
  const CreateNotePage({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<CreateNotePage> createState() => _CreateNotePageState();
}

class _CreateNotePageState extends ConsumerState<CreateNotePage> {
  final TextEditingController titleTextController = TextEditingController();

  final TextEditingController contentTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void createNote() {
      if (titleTextController.text.isEmpty ||
          contentTextController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              "Title and content cannot be empty",
            ),
          ),
        );
        return;
      }
      final notifier = ref.read(stickyProvider.notifier);
      notifier.createStickyNote(
        title: titleTextController.text,
        content: contentTextController.text,
        color: ref.read(selectedColorProvider),
      );

      AutoRouter.of(context).maybePop();
    }

    return Scaffold(
      // backgroundColor: ref.watch(selectedColorProvider),
      body: CreateOrUpdateSticky(
        contentTextController: contentTextController,
        titleTextController: titleTextController,
        create: true,
        onActionTap: createNote,
      ),
    );
  }
}
