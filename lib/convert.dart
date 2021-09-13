import 'dart:io';
import 'package:grizzly_io/grizzly_io.dart';
void main(){
  String pathRootTSV = "./../data/s-roots_20170404.tsv";
  Table tableRootTSV = loadTableFromTSV(pathRootTSV);
  print(tableRootTSV);
}
Table loadTableFromTSV(String path){
  File file = File(path);
  String buffer = file.readAsStringSync();
  Table t = parseLTsv(buffer);
  return t;
}