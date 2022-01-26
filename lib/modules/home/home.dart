import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:splash_ifmt/modules/home/home_controller.dart';
import 'package:splash_ifmt/modules/main/main_page.dart';
import 'package:splash_ifmt/modules/menu/agenda_page.dart';
import 'package:splash_ifmt/modules/menu/salas_page.dart';
import 'package:splash_ifmt/shared/Components/button_white.dart';
import 'package:splash_ifmt/shared/app_colors.dart';
import 'package:splash_ifmt/shared/app_images.dart';
import 'package:splash_ifmt/shared/app_text_styles.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

final controller = Modular.get<HomeController>();

class HomePage extends StatelessWidget {
  static List<Widget> widgetOptions = <Widget>[
    AgendaPage(),
    SalasPage(),
    Text(
      'Index 3: Ações',
    ),
    Text(
      'Index 4: Consumo',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            AppImages.logoApp,
          ),
          backgroundColor: AppColors.secondary,
          elevation: 0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications, color: AppColors.stroke),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.ellipsisV, color: AppColors.stroke),
              onPressed: () {},
            )
          ],
        ),
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.background,
        body: Observer(builder: (context) {
          return widgetOptions.elementAt(controller.selectedIndex);
        }),
        bottomNavigationBar: SizedBox(
          height: 70,
          child: Observer(
            builder: (_) {
              return BottomNavigationBar(
                elevation: 1,
                backgroundColor: Colors.white,
                unselectedFontSize: 10,
                selectedFontSize: 14,
                type: BottomNavigationBarType.fixed,
                showUnselectedLabels: true,
                selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(
                        FontAwesomeIcons.home,
                        color: controller.selectedIndex == 0
                            ? AppColors.stroke
                            : Colors.grey[600],
                      ),
                      label: 'Menu'),
                  BottomNavigationBarItem(
                      // icon: SvgPicture.asset(
                      //   'assets/images/controle.svg',
                      //   width: 24,
                      //   color: controller.selectedIndex == 2
                      //       ? AppColors.stroke
                      //       : Colors.grey[600],
                      // ),
                      icon: Icon(
                        FontAwesomeIcons.wifi,
                        color: controller.selectedIndex == 1
                            ? AppColors.stroke
                            : Colors.grey[600],
                      ),
                      label: 'Controle'),
                  BottomNavigationBarItem(
                      icon: Icon(
                        FontAwesomeIcons.userAlt,
                        color: controller.selectedIndex == 2
                            ? AppColors.stroke
                            : Colors.grey[600],
                      ),
                      label: 'Perfil'),
                ],
                currentIndex: controller.selectedIndex,
                onTap: controller.increase,
                selectedItemColor: AppColors.stroke,
              );
            },
          ),
        ),
      ),
    );
  }
}
