import 'package:flutter/material.dart';
import 'package:widget_exploration/components/centered_placeholder.dart';
import 'components/centered_placeholder.dart';
import 'Styles.dart';

class MainScreen extends StatelessWidget {
  final String title;

  const MainScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ banner(context),
          placeholderRow(),
          placeholderRow()
      ])
    );
  }

  Widget banner(BuildContext context) {
    return Text('Newman!', style: Styles.headline1);
  }

  Widget paddedPlaceholder() {
    return Padding(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                child: Image.asset('assets/newman.jpg'),
                width:100, height: 100)
                );
  }

  Widget placeholderRow() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [paddedPlaceholder(),paddedPlaceholder(),]);
  }
}
