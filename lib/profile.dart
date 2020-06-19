

import 'package:domico/catalogo.dart';
import 'package:flutter/material.dart';

class profile  extends StatefulWidget {
  
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {



//crear info usuario
Widget _useInfo(){

return Positioned(
  top:130,
  child: Container(
    //margin: const EdgeInsets.all(20),
    height: 200,
    width: MediaQuery.of(context).size.width ,
    
    child: Container(
      margin: EdgeInsets.only(left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height:20,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage:NetworkImage('https://scontent-bog1-1.xx.fbcdn.net/v/t1.0-9/100916250_2618394885049020_5993024565419180032_o.jpg?_nc_cat=111&_nc_sid=09cbfe&_nc_eui2=AeHExiTew1cI_9C-aR7kg-3pBEKC_4B2qiAEQoL_gHaqIHPTOYJNYGxiANnm5ZPZKitW_pbzJ4rXY8pw4b7wqpFu&_nc_oc=AQm3xlrPSmfrDouff3rmtz0A65AKtDPsvys4j3TQiy-P08lLbu_dSEZlgAmU9AJAMas&_nc_ht=scontent-bog1-1.xx&oh=2f9fbd59c7e3df190ef02c5db1bce9cf&oe=5F0C1AC9'),
            ),
            
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start                                                                                                                                                                                                                ,
                children: <Widget>[  
                            
                   Text('Michael Jovany Quimbayo Leon', 
                  style: 
                    TextStyle(
                    fontWeight:FontWeight.bold,                                                                                                                                                                                                                                                                                                                                                                                                                
                    fontSize: 20,
                    color: Colors.black,
                    
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:03.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size:13 ,
                          ),

                          Padding(
                            padding:const EdgeInsets.only(left: 3.0),
                            child: Text(
                              'Bogota, Colombia',
                              style: TextStyle(
                                color:Colors.black,
                                //wordSpacing: 1,
                                letterSpacing: 0.5,
                              ),
                            ),
                            
                          
                            ),
                     
                            

                        ],
                      ),
                    ),
                ],
              )
              )
            ]
          ),

          
        ],
      ),

    ),
  ),
);

}
//userExperience
Widget _userExperience(){
return Positioned(
  top:190,
  child:Container(
    margin: EdgeInsets.all(10.0),
    height: 80,
    width: MediaQuery.of(context).size.width,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 110, top: 29),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                   Text('Experiencia:', 
                  style: 
                    TextStyle(
                    fontWeight:FontWeight.w400,                                                                                                                                                                                                                                                                                                                                                                                                                
                    fontSize: 12,
                    color: Colors.black87,
                    //wordSpacing: 1,
                    letterSpacing: 1,
                    
                    ),
                    ),
                    
                    
              ],
              
            ),

            ),
          //Padding(
            //padding: const EdgeInsets.only(left: 13, top: 30),
            //child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              //children: <Widget>[
                   //Text('PROMOTOR', 
                  //style: 
                    //TextStyle(
                    //fontWeight:FontWeight.w400,                                                                                                                                                                                                                                                                                                                                                                                                                
                    //fontSize: 17,
                    //color: Colors.black87,
                    //wordSpacing: 1,
                    //letterSpacing: 2,
                    //),
                    //),    
              //],
            //),
            //),  
            Padding(
              padding: const EdgeInsets.only(left: 7, top: 28),
              
            child:Container(
              
              padding:  EdgeInsets.only(left: 15, right: 15, top: 6, bottom: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.black12) ,
                gradient: LinearGradient(
                  colors: [Color(0xff0101DF), Color(0xff2ECCFA)],                                                                                                                                   
                  begin: Alignment.bottomRight,
                  end: Alignment.centerLeft
                )
              ),
              child:Text('PROMOTOR',
              style: TextStyle(
                color: Color(0xFF000000), 
                fontWeight: FontWeight.w800,
                fontSize: 10,
                letterSpacing: 2,
              ),
              ),
              
              
            )
            ),
            Padding(
             padding: const EdgeInsets.only(left: 6, top: 28),
             child:Icon(
                  Icons.check_circle,
                  color: Colors.greenAccent,
                  size:25,
                ),
            )
          ],
        )

      ],
    ),
  )
);
}
 // fila de informacion
// tags


 Widget _infoRow(){
   
   
   //List tags = ['Catalogo','Recomendado','Estoy Buscando','Calificaciones'];
   return DefaultTabController(
    
   length: 4,
   child:Positioned(
     top: 280,
    child: Container(
      margin: EdgeInsets.only(right: 0, left: 0),
        
    height: 40,
    width: MediaQuery.of(context).size.width,
    
     child: TabBar( 
    
    labelPadding: EdgeInsets.only(right: 2, left: 2, top: 0),
    unselectedLabelColor: Colors.black,
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: Colors.greenAccent,
      
    ),
    
    tabs: <Widget>[
       
       
      Tab(
        text: "Catalogo", 
        
      ),
      Tab(
        text: "Recomendado"
      ),
      Tab(
        text: "Estoy buscando",
      ),
      Tab(
        text: "Calificaciones",
      ),
    ] ,
    ),
  
    ),
   )
   );   
     // scrollDirection: Axis.horizontal,
     // itemCount: tags.length,
     // itemBuilder: (BuildContext context, int index) {
     // return Container(
        
       // decoration: BoxDecoration(
          
       //   borderRadius: BorderRadius.circular(33),
         // border: Border.all(color: Colors.black12)
       // ),
        
       // margin: EdgeInsets.only(right: 15),
       // child:Padding(
         // padding: const EdgeInsets.only(
           // top:10.0, bottom: 2, right: 8,  left: 8
          //  ),
        //child:Text(tags[index],
        //style: TextStyle(
          //color: Colors.black
          //),
          //),
      //)
      //);
     //},
    


     
   
 }
//Fondo Portada
Widget _color_image (){
  return Positioned(
    top: 0,
    child: Container(
      color: Colors.pinkAccent,
      height: 180,
      width: MediaQuery.of(context).size.width,
    ),

  );

}

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      //backgroundColor: Color(0xff09031D,),
      
      appBar: AppBar(
        
        title:Text("Domico", style: TextStyle(color:Colors.black), ),
        
        leading: 
        
        Icon(
          Icons.radio_button_unchecked, 
          color: Colors.greenAccent,
        
        ),
        //elevation: 0,
        backgroundColor: Color(0xffFFFFFF),
        
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0) ,
            child: Icon(Icons.menu, color: Colors.black,),
          )
        ],

      ),
      //crear infro usuario
      
      body: SingleChildScrollView(
        
        child: Stack(
          children: <Widget>[
           
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              
                
                
                
            //child: Image.network('https://blog.payoneer.com/wp-content/uploads/2016/09/freelance-coder.png'),
            //color: Colors.pinkAccent,
            ),
           // TabBarView(
              //children:<Widget> [
                //Catalogo(),


              //],
             // ),
            _color_image (),
            _useInfo(),
            _userExperience(),
            _infoRow(),

          ],
           
        ),
        
      ),
      
    );
  }
}