import 'package:dad_joke/src/api/api_data.dart';
import 'package:flutter/material.dart';

class DadJoke extends StatefulWidget {
  ///
  /// [backgroundColor] is the background color of the container
  ///
  final Color? backgroundColor;

  ///
  /// [reloadIcon] is the icon to reload the joke
  ///
  final IconData? reloadIcon;

  ///
  /// [reloadIconColor] is the color of the reload icon
  ///
  final Color? reloadIconColor;

  ///
  /// [onLoadView] is the widget to show when the joke is loading
  ///
  final Widget? onLoadView;

  ///
  /// [onLoadViewColor] is the color of the text in [onLoadView]
  ///
  final Color? onLoadViewColor;

  ///
  /// [width] is the width of the container
  ///
  final double? width;

  const DadJoke({
    Key? key,
    this.backgroundColor,
    this.reloadIcon,
    this.reloadIconColor,
    this.onLoadView,
    this.onLoadViewColor,
    this.width,
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
          ///
          /// [backgroundColor] is the background color of the container
          ///
          color: widget.backgroundColor ?? Colors.white,
          padding: const EdgeInsets.all(12),

          ///
          /// [width] is the width of the container
          ///
          width: widget.width ?? MediaQuery.of(context).size.width * 0.8,
          child: FutureBuilder<String>(
            ///
            /// [API.getJoke()] is the function to get the joke from the API
            ///
            future: API.getJoke(),

            builder: (context, snapshot) {
              ///
              /// [snapshot] is the data returned from the API
              ///
              if (snapshot.hasData) {
                return Text(snapshot.data!);
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                ///
                /// [onLoadView] is the widget to show when the joke is loading
                ///
                return widget.onLoadView ??
                    Text(
                      'Loading...',
                      style: TextStyle(

                          ///
                          /// [onLoadViewColor] is the color of the text in [onLoadView]
                          ///
                          color: widget.onLoadViewColor ?? Colors.black),
                    );
              }
            },
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              ///
              /// [API.getJoke()] is the function to get the joke from the API
              ///
              API.getJoke();
            });
          },

          ///
          /// [reloadIcon] is the icon to reload the joke
          ///
          icon: Icon(widget.reloadIcon ?? Icons.refresh,

              ///
              /// [reloadIconColor] is the color of the reload icon
              ///
              color: widget.reloadIconColor ?? Colors.black),
        ),
      ],
    );
  }
}
