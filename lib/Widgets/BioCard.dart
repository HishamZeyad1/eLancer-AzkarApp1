import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
  final String Title;
  final String SubTitle;
  final IconData leadingIcon;
  final IconData traillingIcon;
  final double marginBottom;

  BioCard(
      {required this.Title,
      required this.SubTitle,
      required this.leadingIcon,
      required this.traillingIcon,
      this.marginBottom = 0});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      // margin: EdgeInsets.zero,
      margin: EdgeInsets.only(
        bottom: marginBottom,
      ),
      child: ListTile(
        leading: Icon(leadingIcon),
        title: Text(Title),
        subtitle: Text(SubTitle),
        trailing: Icon(traillingIcon),
      ),
    );
  }
}
