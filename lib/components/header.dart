import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_panel/constants.dart';
import 'package:responsive_admin_panel/controllers/MenuController.dart';
import 'package:responsive_admin_panel/responsive.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
              onPressed: context.read<MenuController>().controlMenu,
              icon: const Icon(Icons.menu)),
        if (!Responsive.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(
            flex: Responsive.isDesktop(context) ? 2 : 1,
          ),
        const Expanded(
          child: SearchBar(),
        ),
        const ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: defaultPadding),
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white10)),
      child: Row(
        children: [
          Image.asset(
            "assets/images/profile_pic.png",
            height: 40,
          ),
          if (!Responsive.isMobile(context))
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: Text(
                "Angelina Joli",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          const Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: secondaryColor,
        filled: true,
        hintText: "Search",
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(defaultPadding),
            margin: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
    );
  }
}
