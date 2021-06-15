

import 'package:flutter/cupertino.dart';
import 'package:join/Provider/home_page_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget>mainProviderList(BuildContext c){


  return [
ChangeNotifierProvider(create: (c){return ProviderHomePage();}),




  ];

}