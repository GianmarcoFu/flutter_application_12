import 'package:flutter/material.dart';
import 'package:flutter_application_12/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: InkWell(
          onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));},
          child: Text('Falabella')),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,) , onPressed: (){}),
          
        ],
      ),
      
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
            footer: new Container(
              color: Colors.white70,
              child: ListTile(
                leading: new Text(widget.product_detail_name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                title: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("\$${widget.product_detail_old_price}",
                      style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),)
                      ),

                    Expanded(
                      child: new Text("\$${widget.product_detail_new_price}", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),)
                      ),  
                  ],
                ),
              ),
            ),
            ),
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text("Talla"),
                        content: new Text("Elige el tamaño"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: new Text("Cerrar"),)
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Talla")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                ),
                ),
                ),

                Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text("Color"),
                        content: new Text("Elige el color"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: new Text("Cerrar"),)
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Color")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                ),
                ),
                ),

                Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context,
                    builder: (context){
                      return new AlertDialog(
                        title: new Text("Cantidad"),
                        content: new Text("Elige la cantidad"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                          child: new Text("Cerrar"),)
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Cantidad")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                  ],
                ),
                ),
                ),
            ],
          ),

          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Comprar")
                ),
                ),

                new IconButton(icon: Icon(Icons.add_shopping_cart, color: Colors.red,), onPressed: (){}),

                new IconButton(icon: Icon(Icons.favorite_border, color: Colors.red,), onPressed: (){}),

                
            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("Detalle de producto"),
            subtitle: new Text("Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas Letraset, las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum."),
          ),
          Divider(),
        new Row(
          children: <Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
            child: new Text("Nombre del producto", style: TextStyle(color: Colors.grey),),),
            Padding(padding: EdgeInsets.all(5.0),
            child: new Text(widget.product_detail_name),)          
          ],
        ),

          new Row(
          children: <Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
            child: new Text("Marca del producto", style: TextStyle(color: Colors.grey),),),
            Padding(padding: EdgeInsets.all(5.0),
            child: new Text("Brand X"),)          
          ],
        ),

        new Row(
          children: <Widget>[
            Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
            child: new Text("Condiciones del producto", style: TextStyle(color: Colors.grey),),),
            Padding(padding: EdgeInsets.all(5.0),
            child: new Text("NEW"),)          
          ],
        ),

       Divider(),
       Padding(
        padding: const EdgeInsets.all(8.0),
        child: new Text("Similar products"),
        ),

        Container(
          height: 340.0,
          child: Similar_products(),
        )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red dress",
      "picture": "images/products/hills1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress2.jpeg",
      "old_price": 100,
      "price": 50,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2), 
      itemBuilder: (BuildContext context, int index){
        return Similar_single_prod(
          prod_name: product_list[index]['name'],
          prod_pricture: product_list[index]['picture'],
          prod_old_price: product_list[index]['old_price'],
          prod_price: product_list[index]['price'],
        );
      });
      
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price
  });
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
          tag: new Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                  builder: (context) => new ProductDetails(
                    product_detail_name: prod_name,
                    product_detail_new_price: prod_price,
                    product_detail_old_price: prod_old_price,
                    product_detail_picture: prod_pricture,
                  ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: new Row(children: <Widget>[
                  Expanded(
                    child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                    ),

                    new Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                ],)
              ),
              child: Image.asset(prod_pricture,
              fit: BoxFit.cover,)),
              ),
            )),
      );
  }
}