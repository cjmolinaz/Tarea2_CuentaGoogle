import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          fontFamily: 'ProductSans'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final closeAndTitle = Row(mainAxisSize: MainAxisSize.min, children: [
      Icon(Icons.close),
      SizedBox(width: 10),
      RichText(
        text: TextSpan(
            text: 'Cuenta de ',
            style: TextStyle(
                color: Colors.black, fontSize: 22, fontFamily: 'ProductSans'),
            children: [
              TextSpan(
                  text: 'Google',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ]),
      )
    ]);

    final otherOptions = Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(Icons.help_outline),
        SizedBox(width: 15),
        Icon(Icons.search),
        SizedBox(width: 15),
        CircleAvatar(
          backgroundImage: NetworkImage(
              'https://cdn.iconscout.com/icon/free/png-256/free-avatar-370-456322.png?f=webp'),
          radius: 11,
        ),
      ],
    );

    return DefaultTabController(
      length: 3,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            scrolledUnderElevation: 0,
            backgroundColor: Colors.indigo[50],
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [closeAndTitle, otherOptions],
            ),
            titleSpacing: 8,
            bottom: TabBar(
                labelColor: Colors.blue,
                indicatorColor: Colors.blue,
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                tabs: [
                  Tab(child: Text('Página principal')),
                  Tab(child: Text('Información personal')),
                  Tab(child: Text('Datos y privacidad')),
                ]),
          ),
          body: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (OverscrollIndicatorNotification overscroll) {
                overscroll.disallowIndicator();
                return false;
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Divider(
                      height: 5,
                      thickness: 0.8,
                      color: Colors.indigo[50],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 10, 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Tu cuenta está protegida',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                  'La Verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas.',
                                  style: TextStyle(color: Colors.black54)),
                              SizedBox(height: 30),
                              Text(
                                'Ver detalles',
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        )),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(
                                  'https://www.gstatic.com/identity/boq/accountsettingsmobile/securitycheckup_green_with_new_shield_96x96_26d2e3da755cc2e67209838c9cd08271.png')
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 5,
                      thickness: 0.8,
                      color: Colors.indigo[50],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 10, 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 10),
                              Text(
                                'Verificación de privacidad',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                  'Elige la configuración de privacidad indicada para ti con esta guía paso a paso.',
                                  style: TextStyle(color: Colors.black54)),
                              SizedBox(height: 30),
                              Text(
                                'Realizar la Verificación de privacidad',
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        )),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(
                                  'https://www.gstatic.com/identity/boq/accountsettingsmobile/privacycheckup_initial_with_new_shield_96x96_ca8e6c5983e01665ee5f08396b6c114c.png')
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 5,
                      thickness: 0.8,
                      color: Colors.indigo[50],
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('¿Buscas otra información?',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 10),
                              ListTile(
                                // dense: true,
                                contentPadding:
                                    EdgeInsets.only(left: 0, right: 0),
                                visualDensity:
                                    VisualDensity(horizontal: 0, vertical: -2),
                                leading: Icon(Icons.search),
                                title: Text('Buscar en la cuenta de Google'),
                                trailing: Icon(Icons.chevron_right),
                              ),
                              ListTile(
                                contentPadding:
                                    EdgeInsets.only(left: 0, right: 0),
                                visualDensity:
                                    VisualDensity(horizontal: 0, vertical: -2),
                                leading: Icon(Icons.help_outline),
                                title: Text('Ver las opciones de ayuda'),
                                trailing: Icon(Icons.chevron_right),
                              ),
                              ListTile(
                                contentPadding:
                                    EdgeInsets.only(left: 0, right: 0),
                                visualDensity:
                                    VisualDensity(horizontal: 0, vertical: -2),
                                leading: Icon(Icons.feedback_outlined),
                                title: Text('Enviar comentarios'),
                                trailing: Icon(Icons.chevron_right),
                              )
                            ],
                          ),
                        )),
                      ],
                    ),
                    Divider(
                      height: 5,
                      thickness: 0.8,
                      color: Colors.indigo[50],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 10, 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(height: 8),
                              RichText(
                                text: TextSpan(
                                    text:
                                        'Solo tú puedes ver la configuración. También puedes revisar la configuración de Maps, la Búsqueda o cualquier servicio de Google que uses con frecuencia. Google protege la privacidad y la seguridad de tus datos.',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12.5),
                                    children: [
                                      TextSpan(
                                          text: ' Mas información ',
                                          style: TextStyle(
                                              color: Colors.blue[700])),
                                      WidgetSpan(
                                          child: Icon(
                                        Icons.help_outline,
                                        size: 14,
                                        color: Colors.blue[700],
                                      ))
                                    ]),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        )),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(
                                  'https://www.gstatic.com/identity/boq/accountsettingsmobile/privacypolicy_icon_with_new_shield_48x48_3426417659bc0ba9f7866eead0c3e857.png')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ))),
    );
  }
}
