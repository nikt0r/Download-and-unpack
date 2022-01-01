// https://wiki.openjdk.java.net/display/Nashorn/Nashorn+extensions

var objectMapper = com.fasterxml.jackson.databind.ObjectMapper;

var Thread = Java.type("java.lang.Thread");
var Runnable = Java.type('java.lang.Runnable');
var Map = Java.type('java.util.HashMap');

var map = new Map();
map.put("a1", "Element1");
map.put("a2", 7);

execution.setVariables(map);

var lock = {};
var value = 0;

function run() {
  Thread.sleep(1000);
  // braces and return keyword can be dropped when defining simple one-liner functions
  Java.synchronized(function() value++, lock)();
}

var Run1 = Java.extend(Runnable, { 
  value: 0,  
  run: function() { 
    this.value++;
    print("One thread" + this.value);
        //print("One thread");
      //execution.setVariable('thread', 'Thread 1');
    },
  getValue: function() {
    return value;
  }
}); 

new Thread(function() {
    print("Another thread");
    //print("Another thread");
    //print("Another thread");
  //execution.setVariable('thread', 'Thread 2');

}).start()

//var run = new Run1();
var threads = [];
for (var i = 0; i < 4; i++) {
    var t = new Thread(run);
    threads.push(t);
    t.start();
}
 
for (var i in threads) {
   threads[i].join();
}

execution.setVariable('thread', value);


//var testVariable = {
//  "a": "dasdasda",
//  "b": false,
//  "c": 1234
//}

//execution.setVariable('testVariable', new objectMapper().readTree(JSON.stringify(testVariable)));

var testVariable = JSON.parse(execution.getVariable('testVariable'));

if (testVariable.a == 'ADV') {
  execution.setVariable('result', 'success');
}