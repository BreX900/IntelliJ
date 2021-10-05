#set( $CamelCaseName = "" )
#set( $part = "" )
#foreach($part in $NAME.split("_"))
  #set( $CamelCaseName = "${CamelCaseName}$part.substring(0,1).toUpperCase()$part.substring(1).toLowerCase()" )
#end

class ${CamelCaseName} {
  const ${CamelCaseName}();
}