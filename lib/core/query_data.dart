import 'package:pin_bord/data/models/note_converter.dart';

import '../domain/entities/stickey.dart';

mutationAddStickey(Stickey stickey) {
  var offset = stickey.position?.string();
  var color = stickey.color?.toInt();
  return '''
mutation addStickey {
  insert_sticky_one(
    object: {
      color: "$color", 
      content: "${stickey.content}", 
      createdAt: "now()", 
      position: "$offset", 
      size: "", 
      title: "${stickey.title}", 
      updatedAt: "now()"
    }, 
    on_conflict: {
      constraint: sticky_pkey
    }
  ) {
    color
    content
    createdAt
    id
    position
    size
    title
    updatedAt
  }
}

''';
}

queryGetAllStickies() {
  return '''
{
  sticky {
    color
    content
    createdAt
    id
    position
    size
    title
    updatedAt
  }
}

''';
}
