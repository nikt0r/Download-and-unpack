const obj = {
    a: 1,
    toString() {
      return JSON.stringify(this);
    },
  };
  
  // console.log(obj.toString())
  if ([]) console.log("a");
  
  function Module() {
    return { test };
  
    function test() {
      console.log(this.mObj.a); // this refers to obj which is included in object (module instance)
      // which called the method
    }
  }
  
  var module = Module();
  module.mObj = obj;
  module.test();
  
  function displayName(greeting) {
    console.log(greeting, this.name); // this refers to obj which called the method
  }
  
  var obj2 = {
    name: "Bob",
    display: displayName,
  };
  
  var obj3 = {
    name: "Jim",
    display: displayName,
  };
  
  obj2.display("Yo!");