library fegoci.models.user;

import 'package:angel_framework/common.dart';
import 'package:angel_serialize/angel_serialize.dart';

part 'user.g.dart';

// Model classes in Angel, as a convention, should extend the `Model`
// class.
//
// Angel doesn't box you into using a specific ORM. In fact, you might not
// need one at all.
//
// The out-of-the-box configuration for Angel is to assume
// all data you handle is a Map. You might consider leaving it this way, and just
// (de)serializing data when you need typing support.
//
// If you use a `TypedService`, then Angel will perform (de)serialization for you automatically:
// https://github.com/angel-dart/angel/wiki/TypedService
//
// You also have the option of using a source-generated serialization library.
// Consider `package:owl` (not affiliated with Angel):
// https://github.com/agilord/owl
//
// The `Model` class has no server-side dependency, and thus you can use it as-is, cross-platform.
// This is good for full-stack applications, as you do not have to maintain duplicate class files. ;)

@serializable
abstract class _User extends Model {
  @override
  String id;
  String email, username, password, salt;
  @override
  DateTime createdAt, updatedAt;
}
