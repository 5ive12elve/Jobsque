import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CAthreeGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CAthreeGridItem(
              imagePath: 'assets/images/img_search_primary_48x48.svg',
              labelText: "UI/UX Designer",
            ),
            SizedBox(width: 16),
            CAthreeGridItem(
              imagePath: 'assets/images/img_settings_blue_gray_900_02.svg',
              labelText: "Illustrator",
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            CAthreeGridItem(
              imagePath: 'assets/images/img_developer_category.svg',
              labelText: "Developer",
            ),
            SizedBox(width: 16),
            CAthreeGridItem(
              imagePath: 'assets/images/img_vuesax_outline_graph.svg',
              labelText: "Management",
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            CAthreeGridItem(
              imagePath: 'assets/images/img_information_technology.svg',
              labelText: "Information Technology",
            ),
            SizedBox(width: 16),
            CAthreeGridItem(
              imagePath: 'assets/images/img_research_and_analytics.svg',
              labelText: "Research and Analytics",
            ),
          ],
        ),
      ],
    );
  }
}

class CAthreeGridItem extends StatefulWidget {
  final String imagePath;
  final String labelText;

  const CAthreeGridItem({
    required this.imagePath,
    required this.labelText,
    Key? key,
  }) : super(key: key);

  @override
  _CAthreeGridItemState createState() => _CAthreeGridItemState();
}

class _CAthreeGridItemState extends State<CAthreeGridItem> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        width: 150,
        height: 135,
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
        decoration: BoxDecoration(
          color: selected ? Colors.lightBlue[50] : Color.fromRGBO(250, 250, 250, 1),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected ? Colors.blue : Colors.grey[300]!,
            width: 1.2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: selected ? Colors.blue : Colors.grey[400]!,
                  width: 1.2,
                ),
                color: selected ? Colors.white : null, // Set background color to white if selected
              ),
              child: ClipOval(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    widget.imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  widget.labelText,
                  style: TextStyle(
                    fontFamily: 'SF PRO',
                    fontSize: 12,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
