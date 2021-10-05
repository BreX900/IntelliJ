import 'package:flutter/widgets.dart';
import 'package:hub_router/hub_router.dart';

#set( $CamelCaseName = "" )
#set( $part = "" )
#foreach($part in $NAME.split("_"))
  #set( $CamelCaseName = "${CamelCaseName}$part.substring(0,1).toUpperCase()$part.substring(1).toLowerCase()" )
#end

class ${CamelCaseName} extends HubLocation {
  static const String bluePath = '/${PATH}';
  
  @override
  final String pathBluePrint = '\${bluePath}/*';

  const ${CamelCaseName}();

  @override
  Page buildPage(BuildContext context) {
    return DevicePage(
      name: pathBluePrint,
      builder: (context) => Container(),
    );
  }
}
