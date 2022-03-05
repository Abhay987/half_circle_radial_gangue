import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
            backgroundColor: Colors.white,
            body: Center(child: SfRadialGauge(
              enableLoadingAnimation: true, animationDuration: 4000,
              /*title: const GaugeTitle(text: 'Speedometer', textStyle: TextStyle(
                            fontSize: 20.0,fontWeight: FontWeight.bold)),   */
              axes: [
                RadialAxis(
                  showLabels: false,
                  showTicks: false,
                  axisLineStyle: const AxisLineStyle(                    
                    //thickness: 40,
                    cornerStyle: CornerStyle.bothCurve,
                    //color: Colors.cyanAccent,
                    //cornerStyle: CornerStyle.bothCurve,
                    //dashArray: [1,90],
                   /* gradient: SweepGradient(
                  colors: const <Color>[Colors.deepPurple,Colors.red,
                    Color(0xFFFFDD00), Color(0xFFFFDD00),
                    Color(0xFF30B32D), ],
                  stops: const <double>[0,0.03, 0.5833333, 0.73, 1],
                ),*/
                  ),
                 // minimum: 0,maximum: 150,
                    //canScaleToFit: true,
                    //isInversed: true,
                       //  interval: 20
                 startAngle: 180,
                 endAngle: 0,
                ranges: <GaugeRange>[
                    GaugeRange(startValue: 0,endValue: 40,color: Colors.green,
                   // startWidth: 10,
                   // endWidth: 10,
                    ),                    
                    GaugeRange(startValue: 40,endValue: 70,color: Colors.orange),
                    GaugeRange(startValue: 70,endValue: 100,color: Colors.red)],
                   /* pointers: const[
                      NeedlePointer(value:90)
                    // RangePointer(value: 90),
                   // MarkerPointer(value: 90),
                   //WidgetPointer(child: Text('Hlo'),value: 90,),
                    ],    */
                    /*annotations: [
                   GaugeAnnotation(widget: Container(child:
            const Text('90.0',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
            angle:270,positionFactor: 0.8)
                    ],    */
                )]                
              
            )),
      ),
    );    
      
      
  }
}
