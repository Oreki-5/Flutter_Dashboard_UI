import 'package:calender_picker/calender_picker.dart';
import 'package:flutter/material.dart';
import 'package:mypcot_dashboard/color_consts.dart';
import 'package:mypcot_dashboard/widgets/app_bar_button.dart';
import 'package:mypcot_dashboard/widgets/customer_action_stack.dart';
import 'package:mypcot_dashboard/widgets/event_card.dart';
import 'package:mypcot_dashboard/widgets/order_action_stack.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot_dashboard/widgets/subscriptions_action_stack.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});
  final _leadingIconSize = 35.0;
  final _actionBtnIconSize = 35.0;
  final _bottomAppBarHeight = 60.0;

  final DateTime _now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/sidebar_menu_filled.svg",
                  width: _leadingIconSize,
                  height: _leadingIconSize,
                ),
              ),
              actionsPadding: EdgeInsets.symmetric(horizontal: 10),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/icons/heart_circled_filled.svg",
                    width: _actionBtnIconSize,
                    height: _actionBtnIconSize,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: Badge(
                      label: Text("2"),
                      backgroundColor: onActionOrange,
                      child: SvgPicture.asset(
                        "assets/icons/notification_bell.svg",
                        width: _actionBtnIconSize,
                        height: _actionBtnIconSize,
                      ),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/man_1.jpg"),
                ),
              ],
            ),
          ];
        },
        body: _bodyUI(context),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: CircleBorder(),
        backgroundColor: primaryBlue,
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.none,

        height: _bottomAppBarHeight,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBarButton(
              iconLabel: "Home",
              iconPath: "assets/icons/home.svg",
              labelColor: primaryFont,
              labelWeight: FontWeight.w700,
            ),
            AppBarButton(
              iconLabel: "Customers",
              iconPath: "assets/icons/customers_transparent.svg",
              labelColor: primaryFontLight,
              labelWeight: FontWeight.w400,
            ),
            SizedBox(height: 20.0, width: 20.0),
            AppBarButton(
              iconLabel: "Khata",
              iconPath: "assets/icons/khata.svg",
              labelColor: primaryFontLight,
              labelWeight: FontWeight.w400,
            ),
            AppBarButton(
              iconLabel: "Orders",
              iconPath: "assets/icons/orders_icon_transparent.svg",
              labelColor: primaryFontLight,
              labelWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }

  Widget _bodyUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: 40,
            ),
            child: _welcomeCard(),
          ),
          _analysisCards(context),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: _calenderTimeline(context),
          ),
          EventCard(),
          EventCard(),
          SizedBox(height: _bottomAppBarHeight + 50),
        ],
      ),
    );
  }

  Widget _welcomeCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: "Welcome, ",
                style: TextStyle(
                  fontSize: 18,
                  color: primaryFontLight,
                  fontWeight: FontWeight.w500,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: "Mypcot !!",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: primaryFont,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "here is your dashboard",
              style: TextStyle(fontWeight: FontWeight.w300),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            shape: WidgetStateProperty.all(CircleBorder(),),
            minimumSize: WidgetStateProperty.all(Size(45, 45)),
            backgroundColor: WidgetStateProperty.all(Colors.white)
          ),
          child: SvgPicture.asset("assets/icons/search_transparent.svg",),
        ),
      ],
    );
  }

  Widget _analysisCards(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      clipBehavior: Clip.none,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 5),
            child: OrderActionStack(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 10),
            child: SubscriptionsActionStack(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 10),
            child: CustomerActionStack(),
          ),
        ],
      ),
    );
  }

  Widget _calenderTimeline(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    DateFormat('MMMM, dd yyyy').format(_now),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: primaryFont,
                    ),
                  ),
                  Text(
                    "Today",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: primaryFont,
                    ),
                  ),
                ],
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.arrow_drop_down),
                label: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Timeline"),
                ),
                iconAlignment: IconAlignment.end,
                style: ButtonStyle(
                  foregroundColor: WidgetStateProperty.all(primaryFont),
                  fixedSize: WidgetStateProperty.all(Size(100, 10)),

                  padding: WidgetStateProperty.all(EdgeInsets.only(left: 0)),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.calendar_month),
                label: Text(DateFormat('MMM, yyyy').format(_now).toUpperCase()),
                iconAlignment: IconAlignment.start,
                style: ButtonStyle(
                  fixedSize: WidgetStateProperty.all(Size(110, 10)),
                  foregroundColor: WidgetStateProperty.all(primaryFont),
                  padding: WidgetStateProperty.all(EdgeInsets.only(right: 0)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CalendarPicker(
              selectionMode: CalendarSelectionMode.single,
              config: CalendarConfig(
                itemWidth: 47,
                itemSpacing: 1.5,
                minDate: DateTime(2020, 1, 1, 0, 0, 0, 0, 0),
                startDate: DateTime.now().subtract(Duration(days: 3)),
                locale: 'en_US',
                highlightToday: true,
                highlightWeekends: false,
                showMonthHeaders: false,
                enableSwipeNavigation: false,
              ),
              onDateSelected: (date) {},
              style: CalendarStyle(
                dateTextStyle: TextStyle(
                  color: primaryFont,
                  fontWeight: FontWeight.w600,
                ),
                dayTextStyle: TextStyle(
                  color: primaryFont,
                  fontWeight: FontWeight.w200,
                ),
                todayDateTextStyle: TextStyle(
                  color: calenderSelected,
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                ),
                todayDayTextStyle: TextStyle(
                  color: calenderSelected,
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
                todayDecoration: BoxDecoration(color: Colors.transparent),
                selectedDateTextStyle: TextStyle(
                  color: primaryFont,
                  fontWeight: FontWeight.w600,
                ),
                selectedDayTextStyle: TextStyle(
                  color: primaryFont,
                  fontWeight: FontWeight.w200,
                ),
                selectedDecoration: BoxDecoration(color: Colors.transparent),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _actionCard(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.95,
      height: 150,
      child: Card(
        // color: const Color.fromARGB(255, 255, 255, 255),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("New Order Created"),
                  Text("New Order created with Order"),
                  Text("9:00 pm"),
                  Icon(Icons.arrow_forward),
                ],
              ),
              Icon(Icons.paste, size: 100),
            ],
          ),
        ),
      ),
    );
  }
}
