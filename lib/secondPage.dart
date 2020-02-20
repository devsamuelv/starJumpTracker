import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 30),
            DataTable(
              columns: [
                DataColumn(label: Text('Name')),
                DataColumn(
                  label: Text("Star Jump's"),
                  numeric: true,
                )
              ],
              rows: [
                DataRow(cells: [DataCell(Text('Cool')), DataCell(Text('1'))])
              ],
            ),
            RaisedButton(
              onPressed: () {
                // code here for firebase
              },
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Text('Im a Star', style: TextStyle(fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
