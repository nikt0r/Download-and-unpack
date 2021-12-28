function JSONObject(json) {
    this.json = json;
  }
  
  JSONObject.prototype.get = function (id) {
    var value = this.json[id];
    if (Array.isArray(value))
      return value.map(function (el) {
        return new JSONObject(el);
      });
    else if (typeof value == "object") return new JSONObject(value);
    else return value;
  };
  
  var obj = {
    aaa: 1,
    bbb: "text",
    ccc: {
      a1: 1233,
      a2: 5664,
    },
    ddd: [
      {
        b1: 999,
        b2: "adasdasd",
      },
      {
        b1: 12999,
        b2: "aasASASDADASDdasdasd",
      },
    ],
  };
  
  var jsonobj = new JSONObject(obj);
  
  var node1 = jsonobj.get("aaa");
  var node2 = jsonobj.get("ddd")[0].get("b1");
  
  console.log(node1);
  console.log(node2);
  