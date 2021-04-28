import 'package:flutter/material.dart';
import 'package:storyteller/CONST.dart';
import 'package:storyteller/domain/model/voice.dart';

class VoicesTable extends StatelessWidget {
  final List<Voice> voices = getVoices();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Expanded(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddinLow),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: voices.length,
            itemBuilder: (context, index) => buildVoices(voices[index]),
          )),
    ));
  }

  Widget buildVoices(Voice voice) {
    return GestureDetector(
      onTap: () {
        print('onTap');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Container(
          child: Column(children: [
            Table(
              children: <TableRow>[
                TableRow(children: <Widget>[
                  Container(
                    child: FittedBox(
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.fill ,
                        child: voice.cover),
                  ),
                  TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Row(
                        children: [ 
                          Container(
                              padding: EdgeInsets.only(top: 1.0),
                              height: 32,
                              width: 32,
                              child: voice.equalizer)
                        ],
                      )),
                ])
              ],
            ),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 20,
            )
          ]),
        ),
      ),
    );
  }
}

List<Voice> getVoices() {
  return [
    new Voice(
        cover: Image(image: AssetImage('assets/images/cover1.jpg'), fit: BoxFit.fill,),
        equalizer: Image(image: AssetImage('assets/images/equalizer.png')),
        timeInfo: "5m",
        statusBtn: Icon(Icons.access_alarms),
        title:
            "Инна Смаль, ранее занимавшая должность зампредседателя Госкомитета по государственной регистрации и кадастру Республики Крым",
        comments: "A10k",
        countListned: "L15K"),
    new Voice(
        cover: Image(image: AssetImage('assets/images/cover2.jpg')),
        equalizer: Image(image: AssetImage('assets/images/equalizer.png')),
        timeInfo: "7m",
        statusBtn: Icon(Icons.access_alarms),
        title:
            "Школа на улице Тимирязева в Ялте: средства на проектирование выделят в этом году из федерального бюджета",
        comments: "A1k",
        countListned: "L2K"),
    new Voice(
        cover: Image(image: AssetImage('assets/images/cover3.jpg')),
        equalizer: Image(image: AssetImage('assets/images/equalizer.png')),
        timeInfo: "2m",
        statusBtn: Icon(Icons.access_alarms),
        title:
            "Гендиректору OOO «Стартинвест» Надежде Олефир вручили знак отличия «Трудовая доблесть России»",
        comments: "A120",
        countListned: "L320"),
    new Voice(
        cover: Image(image: AssetImage('assets/images/cover1.jpg')),
        equalizer: Image(image: AssetImage('assets/images/equalizer.png')),
        timeInfo: "5m",
        statusBtn: Icon(Icons.access_alarms),
        title:
            "В правительстве Крыма заявляют о снятии режимного водоснабжения в Симферополе через какое-то время",
        comments: "A75",
        countListned: "L320"),
    new Voice(
        cover: Image(
            image: AssetImage('assets/images/cover3.jpg'),
            width: 120,
            height: 150),
        equalizer: Image(image: AssetImage('assets/images/equalizer.png')),
        timeInfo: "5m",
        statusBtn: Icon(Icons.access_alarms),
        title:
            "Объявлен сбор средств на лечение девочки из Алушты, упавшей с десятого этажа недостроя",
        comments: "A75",
        countListned: "L320"),
    new Voice(
        cover: Image(
            image: AssetImage('assets/images/cover2.jpg'),
            width: 120,
            height: 150),
        equalizer: Image(image: AssetImage('assets/images/equalizer.png')),
        timeInfo: "5m",
        statusBtn: Icon(Icons.access_alarms),
        title:
            "Смаль уволилась с должности врио председателя Госкомрегистра Крыма",
        comments: "A75",
        countListned: "L320"),
    new Voice(
        cover: Image(
          image: AssetImage('assets/images/cover1.jpg'),
          width: 120,
          height: 150,
        ),
        equalizer: Image(image: AssetImage('assets/images/equalizer.png')),
        timeInfo: "5m",
        statusBtn: Icon(Icons.access_alarms),
        title:
            "В МЧС напомнили ялтинцам правила поведения при посещении церквей и лесов",
        comments: "A10k",
        countListned: "L15K"),
    new Voice(
        cover: Image(
          image: AssetImage('assets/images/cover2.jpg'),
          width: 120,
          height: 150,
        ),
        equalizer: Image(image: AssetImage('assets/images/equalizer.png')),
        timeInfo: "7m",
        statusBtn: Icon(Icons.access_alarms),
        title: "В Симеизе на одной из улиц возможно отключат водоснабжение",
        comments: "A1k",
        countListned: "L2K"),
    new Voice(
        cover: Image(
            image: AssetImage('assets/images/cover3.jpg'),
            width: 120,
            height: 150),
        equalizer: Image(image: AssetImage('assets/images/equalizer.png')),
        timeInfo: "2m",
        statusBtn: Icon(Icons.access_alarms),
        title:
            "В Крыму с 1 по 10 мая все пункты вакцинации против Covid-19 продолжат свою работу",
        comments: "A120",
        countListned: "L320"),
    new Voice(
        cover: Image(
            image: AssetImage('assets/images/cover1.jpg'),
            width: 120,
            height: 150),
        equalizer: Image(image: AssetImage('assets/images/equalizer.png')),
        timeInfo: "5m",
        statusBtn: Icon(Icons.access_alarms),
        title:
            "Задержан директор «ЕДДС 112» Ялты, он подозревается в ущербе городу на 18 млн рублей",
        comments: "A75",
        countListned: "L320")
  ];
}
