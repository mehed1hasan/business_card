import 'package:azlistview/azlistview.dart';

class ContactsLists extends ISuspensionBean{
  String? imagePath;
  String? name;
  String? tag;
  String? designation;
  ContactsLists({this.imagePath, this.name,this.tag, this.designation});

  @override
  String getSuspensionTag(){
    return tag!;
  }


}