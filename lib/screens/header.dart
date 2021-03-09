import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mini_project1/constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      height: size.height * 0.2, //Covers 20% of the total height
      child: Stack(
        children: [
          Container(
              height: size.height * 0.2 - 27,
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Row(
                children: [
                  Text(
                    'Green Glow!',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  IconButton(
                    icon: SvgPicture.asset("assets\icons\search-24px.svg"),
                    onPressed: () {},
                  )
                ],
              )),
        ],
      ),
    );
  }
}
