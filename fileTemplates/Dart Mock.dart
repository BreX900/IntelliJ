import 'package:mockito/annotations.dart';

import '${NAME}.mocks.dart';

#set( $CamelCaseName = "" )
#set( $part = "" )
#foreach($part in $NAME.split("_"))
  #set( $CamelCaseName = "${CamelCaseName}$part.substring(0,1).toUpperCase()$part.substring(1).toLowerCase()" )
#end

#set( $BaseCamelCaseName = $CamelCaseName.replace("Test", "") )

@GenerateMocks([$BaseCamelCaseName])
mixin ${CamelCaseName} on TestClass {
  final mock$BaseCamelCaseName = Mock$BaseCamelCaseName();

  @override
  void onSetUp() {
    super.onSetUp();
    getIt.registerSingleton<$BaseCamelCaseName>(mock$BaseCamelCaseName);
  }
}
