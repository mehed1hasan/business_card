import 'package:shared_value/shared_value.dart';

final SharedValue<String> token = SharedValue(
  // disk storage key for shared_preferences (optional)
  value: "",
  key: "token",
  // autosave to shared prefs when value changes (optional)
  // autosave: true,
);

final SharedValue<String> bToken = SharedValue(
  value: "",
  key: "bToken",
);

final SharedValue<String> name = SharedValue(
  value: "",
  key: "name",
);

final SharedValue<String> email = SharedValue(
  value: "",
  key: "email",
);

saveValue(){
  token.save();
  bToken.save();
  name.save();
  email.save();
}

loadValue(){
  token.load();
  bToken.load();
  name.load();
  email.load();
}

clearValue(){
  token.$ = "";
  token.save();
  bToken.$ = "";
  bToken.save();
  name.$ = "";
  name.save();
  email.$ = "";
  email.save();
}