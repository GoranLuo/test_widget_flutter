// firstMatch:  This method searches a string for the first position where the regexp matches.
// 在字符串中搜索和regexp匹配的子字符串，如果找到，返回第一个匹配的子字符串的位置，否则触发异常。

// allMatches:  look for all matches of a regular expression in a string.
// 在字符串中搜索所有和regexp匹配的子字符串，如果找到，返回所有匹配的子字符串的迭代对象，否则触发异常。
import 'package:flutter/cupertino.dart';

String testRegExp() {
  //  r'(\w+)'：\w表示匹配一个字母或者数字，等同于一个 [a-zA-Z0-9_]，
  //  后面有+，则表示多个[a-zA-Z0-9_]，也就是匹配一段由字母或者数字或者_组成的字符串。
  String? valueReturn = '';
  RegExp exp = RegExp(r'(\w+)');
  String str = '   Par@se my string';
  //  String str = '  ';

/* firstMatch
  try {
    RegExpMatch? match = exp.firstMatch(str);
    debugPrint(match![0]);
    return (match![0]).toString();
  } catch (e) {
    return e.toString();
  }
*/

  try{
    Iterable<RegExpMatch> matches = exp.allMatches(str);
    for (final m in matches) {
      debugPrint(m[0].toString());
      valueReturn = valueReturn! + m[0].toString();
    }
    return valueReturn!;
  }catch(e){
    return e.toString();
  }
}
