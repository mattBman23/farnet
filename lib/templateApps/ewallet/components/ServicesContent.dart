import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<ModelServices> listServices = new List();
    listServices.add(
      new ModelServices(title: "Send\nMoney", img: "send.png"),
    );
    listServices.add(
      new ModelServices(title: "Receive\nMoney", img: "receive.png"),
    );
    listServices.add(
      new ModelServices(title: "Mobile\nPrepaid", img: "mobile.png"),
    );
    listServices.add(
      new ModelServices(title: "Electricity\nBill", img: "bill.png"),
    );
    listServices.add(
      new ModelServices(title: "Send\nMoney", img: "send.png"),
    );
    listServices.add(
      new ModelServices(title: "Receive\nMoney", img: "receive.png"),
    );
    listServices.add(
      new ModelServices(title: "Mobile\nPrepaid", img: "mobile.png"),
    );
    listServices.add(
      new ModelServices(title: "Electricity\nBill", img: "bill.png"),
    );

    return Container(
      width: double.infinity,
      height: 150,
      child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.5),
        children: listServices.map((value) {
          return GestureDetector(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xffF1F3F6)),
                  child: SizedBox(
                    height: 24,
                    width: 24,
                    child: Image.asset("assets/ewallet/images/${value.img}"),
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Text(
                  "${value.title}",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ubuntu(
                    fontSize: 12,
                    color: Color(0xff3A4276),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class ModelServices {
  String title, img;

  ModelServices({this.title, this.img});
}
