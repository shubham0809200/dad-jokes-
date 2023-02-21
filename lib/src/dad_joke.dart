import 'package:dad_joke/src/api/api_data.dart';
import 'package:flutter/material.dart';

class DadJoke extends StatefulWidget {
  // get Background Color
  final Color? backgroundColor;
  // get Icon to show
  final IconData? reloadIcon;
  // get Icon Color
  final Color? reloadIconColor;
  // get Loader to show
  final Widget? onLoadView;
  // get loader color
  final Color? onLoadViewColor;

  const DadJoke({
    Key? key,
    this.backgroundColor,
    this.reloadIcon,
    this.reloadIconColor,
    this.onLoadView,
    this.onLoadViewColor,
  }) : super(key: key);

  @override
  State<DadJoke> createState() => _DadJokeState();
}

class _DadJokeState extends State<DadJoke> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: widget.backgroundColor ?? Colors.white,
          padding: const EdgeInsets.all(12),
          width: MediaQuery.of(context).size.width * 0.8,
          child: FutureBuilder<String>(
            future: API.getJoke(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!);
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return widget.onLoadView ??
                    Text(
                      'Loading...',
                      style: TextStyle(
                          color: widget.onLoadViewColor ?? Colors.black),
                    );
              }
            },
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              // call API.getJoke() again
              API.getJoke();
            });
          },
          icon: Icon(widget.reloadIcon ?? Icons.refresh,
              color: widget.reloadIconColor ?? Colors.black),
        ),
      ],
    );
  }
}
