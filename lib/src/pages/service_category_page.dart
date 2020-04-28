import 'package:flutter/material.dart';

import 'package:trabajitos_frontend/src/utils/text_utils.dart';


class ServiceCategoryPage extends StatefulWidget {

  @override
  _ServiceCategoryPageState createState() => _ServiceCategoryPageState();

}

class _ServiceCategoryPageState extends State<ServiceCategoryPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Electricistas'),),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            this._drawGeneralRequestButton(),
            drawSymetricSubtitle(
              context: context,
              text: 'Personal disponible',
              horizontalPadding: 16.0,
              verticalPadding: 24.0
            ),
            ...this._drawGigWorkerCards(context),
          ],
        ),
      ),
    );
  }

  Widget _drawGeneralRequestButton() {

    return Container(
      padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 0.0),
      child: Center(
        child: RaisedButton(
          child: Text('Solicitud general'),
          onPressed: () {},
          color: Color.fromRGBO(44, 203, 50, 1),
          textColor: Colors.white,
        ),
      ),
    );

  }

  List<Widget> _drawGigWorkerCards(BuildContext context) {

    final List<Widget> gigWorkerCards = [];

    final List<Map<String, String>> gigWorkersInfo = [
      {
        'name'        : 'José Carlos Tobar',
        'photo'       : 'assets/images/carlos.jpg',
        'address'     : 'Colonia Santa Emilia',
        'service'     : 'Electricista',
        'cost'        : '20',
        'rating'      : '5',
        'times_rated' : '42',
      },
      {
        'name'        : 'José Carlos Tobar',
        'photo'       : 'assets/images/carlos.jpg',
        'address'     : 'Colonia Santa Emilia',
        'service'     : 'Electricista',
        'cost'        : '20',
        'rating'      : '5',
        'times_rated' : '42',
      },
      {
        'name'        : 'José Carlos Tobar',
        'photo'       : 'assets/images/carlos.jpg',
        'address'     : 'Colonia Santa Emilia',
        'service'     : 'Electricista',
        'cost'        : '20',
        'rating'      : '5',
        'times_rated' : '42',
      }
    ];

    gigWorkersInfo.forEach((gigWorker) {

      final Widget gigWorkerCard = Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0)
        ),
        elevation: 10.0,
        margin: EdgeInsets.only(top: 0, right: 16.0, bottom: 24.0, left: 16.0),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'worker_profile');
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
                child: Image(
                  image: AssetImage('assets/images/profiles/carlos.png'),
                  height: 64.0,
                )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 24.0, bottom: 8.0),
                    child: Text(
                      gigWorker['name'],
                      style: Theme.of(context).textTheme.subhead,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.amber, size: 16.0,),
                        Icon(Icons.star, color: Colors.amber, size: 16.0,),
                        Icon(Icons.star, color: Colors.amber, size: 16.0,),
                        Icon(Icons.star, color: Colors.amber, size: 16.0,),
                        Icon(Icons.star_half, color: Colors.amber, size: 16.0,),
                        Text(' • '),
                        Text('${gigWorker["times_rated"]} calificaiones'),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      '${gigWorker["service"]}, ${gigWorker["address"]}'
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 24.0),
                    child: Text(
                      '\$${gigWorker["cost"]} / hora o fracción',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0
                      ),
                    )
                  ),
                ],
              )
            ],
          ),
        ),
      );

      gigWorkerCards.add(gigWorkerCard);

    });

    return gigWorkerCards;

  }

}