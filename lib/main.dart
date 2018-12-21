import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;

void main() {
  //打印
  print("hello world");

  /*
      一、变量定义:在Dart中变量没有初始化初始值都是null
         final与const关键字：
         final：被final修饰的变量与Java中的final关键字作用是一样的，初始化了就不能修改其值
         const：修饰静态常量
  *      定义变量可以不指定具体类型，会自动进行类型推断
  *        1、数字类型：int和double
  *        2、字符类型:String
  *        3、Booleans类型:bool
  *        4、在Dart中数组都是List对象
  *        5、Maps:
  *   二、方法定义：
  *       1、=>这个符号是{return expr;的简写;}。 =>表示法有时称为箭头语法
  *       箭头（=>）和分号（;）之间只能出现表达式而非语句
  *       2、当调用一个方法的时候可以使用paramName: value指明参数名字：例如：
  *         enableFlags(bold: true, hidden: false);
  *       3、在定义方法参数的时候使用@required注解来说明调用方法时必须传
  *       4、在方法的参数中使用[]表示可选参数
  *       5、参数默认值
  *       6、方法作为参数
  *          void printElement(int element) {
               print(element);
              }

              var list = [1, 2, 3];

              // Pass printElement as a parameter.
              list.forEach(printElement);
           7、匿名方法：
    三、操作符：
        Dart中的操作符大致和Java中差不多，有几个特殊的：
          类型判断：
          as:指定某个类型为另外一个类型，前提是要被指定的类型是要指定为的类型的子类
          is:类似于Java中的instance of
          !is:
    四、条件控制语句：
        1、if...else：语句与Java中的一样
        2、for循环：普通的for循环跟Java中一样，另外还有一种:
          for (var x in collection) {
            print(x); // 0 1 2
          }
        3、while、do...while循环
        4、break、continue
        5、switch...case

     五、异常：
        1、throw FormatException('Expected at least 1 section')这种抛出异常的方式跟Java中类似
        2、除了上面那种标准的抛出异常的方法，在dart中还可以抛出任意对象：
          throw 'Out of llamas!';
        3、catch：
          try {
                breedMoreLlamas();
              } on OutOfLlamasException {//当需要具体的异常类型使用on
                // A specific exception
                buyMoreLlamas();
              } on Exception catch (e) {//当需要处理异常的时候用catch
                // Anything else that is an exception
                print('Unknown exception: $e');
              } catch (e) {
                // No specified type, handles all
                print('Something really unknown: $e');
              } catch (e, s) {//catch可以接收两个参数第一个是异常类型，第二个是栈信息
                print('Exception details:\n $e');
                print('Stack trace:\n $s');
              }
         4、rethrow:
            可以将异常再抛出给外面调用的地方处理
         5、finally:
            跟Java中的finally作用一样
      六、类：
          1、成员调用：
              在Java中我们通过一个类实例去调用它的属性的时候可以通过.的方式去直接调用，但是经常可能因为各种原因导致实例为null，从而导致NullPointerException，在dart语言中我们可以通过?.替代.
            从而减少空指针异常的情况
         2、构造函数使用：
              1、在dart中可以通过像Java中调用构造函数的方式创建实例(在dart2中new关键字是可选的)
                var p1 = new Point(2, 2);
              2、也可以想kotlin当中创建实例一样直接调构造函数
                var p1 = Point(2, 2);
              3、也可以使用ClassName.fromJson()的方式创建实例
                var p2 = Point.fromJson({'x': 1, 'y': 2});
         3、类中const修饰的构造函数，在调用的时候需要将const放在前面
              1、下面情况可以忽略const：
                当构造函数被const修饰，但是在调用的时候将结果赋给了一个const修饰的成员，那么在调用构造函数的时候可以忽略const：如下代码：
                  const pointAndLine = const {
                    'point': const [const ImmutablePoint(0, 0)],
                    'line': const [const ImmutablePoint(1, 10), const ImmutablePoint(-2, 11)],
                  };
                 忽略const：
                 const pointAndLine = {
                  'point': [ImmutablePoint(0, 0)],
                  'line': [ImmutablePoint(1, 10), ImmutablePoint(-2, 11)],
                };
              2、如果被const修饰的构造函数，在调用的时候没有用const，那么创建的将不是一个constant的对象
          4、通过object的runtimeType可以获取到当前对象的类型
          5、继承一个类的方式跟Java一样都是使用extends关键字
          6、在dart中在构造函数中给变量赋值时可以是Java中的方式，dart还有语法糖，可以直接进行赋值：
              class Point {
                num x, y;

                Point(num x, num y) {
                  // There's a better way to do this, stay tuned.
                  this.x = x;
                  this.y = y;
                }
              }
            语法糖：
              class Point {
                num x, y;

                // Syntactic sugar for setting x and y
                // before the constructor body runs.
                Point(this.x, this.y);
              }

            7、使用命名的构造函数来构建多个构造函数：
              class Point {
                num x, y;

                Point(this.x, this.y);

                // Named constructor
                Point.origin() {
                  x = 0;
                  y = 0;
                }
              }
  *
  * */
  /*****************************变量定义start*******************************************/
  var name = 'Voyager I'; //字符串
  var year = 1977;

  ///int类型
  var antennaDiameter = 3.7;

  ///double
  var flybyObjects = ["Jupiter", "Saturn", "Uranus", "Neptune"];

  ///数组类型
  var iamge = {
    'tag': ['saturn'],
    'url': '//path/to/saturn.jpg'
  };

  ///maps
  /*****************************变量定义end*******************************************/

  ///

  ///
  /*****************************方法定义start*******************************************/
//  isNoble(atomicNumber) {
//    return _nobleGaese[atomicNumber] != null;
//  }

  ///可选参数
  String say(String from, String msg, [String device]) {
    var result = '$from says $msg';
    if (device != null) {
      result = '$result with a $device';
    }
    return result;
  }

  assert(say('bob', 'Howdy') == 'bob says Howdy');
  assert(say('bob', 'Howdy', 'lq') == 'bob says Howdy with a lq');

  ///参数默认值
  void enableFlags({bool bold = false, bool hidden = true}) {}
  enableFlags(bold: true);

//  String say(String from, String msg, [String device = 'carrier pigeon', String mood]) {}
  /*****************************方法定义end*******************************************/
}

//    runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 48.0,
          ),
        ),
        body: new Center(
//          child: new Text('Hello World'),
//          child: new Text(wordPair.asUpperCase),
          child: new RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new RandowWordsSatate();
  }
}

class RandowWordsSatate extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = new Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);

  Widget _buildRow(WordPair pair) {
    final alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null),
      onTap: () {
        setState(() {
          if (alreadySaved)
            _saved.remove(pair);
          else
            _saved.add(pair);
        });
      },
    );
  }

  // TODO: implement build
  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) {
            return new Divider();
          }
          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  void _pushSaved() {
    Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
      final titles = _saved.map((pair) {
        return new ListTile(
          title: new Text(
            pair.asPascalCase,
            style: _biggerFont,
          ),
        );
      });
      final divied =
          ListTile.divideTiles(context: context, tiles: titles).toList();
      return new Scaffold(
        appBar: new AppBar(
          title: new Text("saved Suggestions"),
        ),
        body: new ListView(
          children: divied,
        ),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name Generator'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
      body: _buildSuggestions(),
    );
  }
}
