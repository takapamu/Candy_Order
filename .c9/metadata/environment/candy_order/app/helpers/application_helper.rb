{"filter":false,"title":"application_helper.rb","tooltip":"/candy_order/app/helpers/application_helper.rb","undoManager":{"mark":100,"position":100,"stack":[[{"start":{"row":3,"column":13},"end":{"row":3,"column":14},"action":"remove","lines":["q"],"id":25},{"start":{"row":3,"column":13},"end":{"row":3,"column":21},"action":"insert","lines":["quantity"]}],[{"start":{"row":2,"column":30},"end":{"row":2,"column":31},"action":"remove","lines":["t"],"id":26},{"start":{"row":2,"column":29},"end":{"row":2,"column":30},"action":"remove","lines":["n"]},{"start":{"row":2,"column":28},"end":{"row":2,"column":29},"action":"remove","lines":["u"]},{"start":{"row":2,"column":27},"end":{"row":2,"column":28},"action":"remove","lines":["o"]},{"start":{"row":2,"column":26},"end":{"row":2,"column":27},"action":"remove","lines":["m"]},{"start":{"row":2,"column":25},"end":{"row":2,"column":26},"action":"remove","lines":["a"]}],[{"start":{"row":2,"column":25},"end":{"row":2,"column":26},"action":"insert","lines":["q"],"id":27}],[{"start":{"row":2,"column":25},"end":{"row":2,"column":26},"action":"remove","lines":["q"],"id":28},{"start":{"row":2,"column":25},"end":{"row":2,"column":33},"action":"insert","lines":["quantity"]}],[{"start":{"row":4,"column":2},"end":{"row":4,"column":5},"action":"remove","lines":["end"],"id":29},{"start":{"row":4,"column":2},"end":{"row":5,"column":0},"action":"insert","lines":["",""]},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"insert","lines":["  "]},{"start":{"row":5,"column":2},"end":{"row":6,"column":0},"action":"insert","lines":["",""]},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"remove","lines":["  "],"id":30},{"start":{"row":5,"column":2},"end":{"row":6,"column":0},"action":"remove","lines":["",""]},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"remove","lines":["  "]},{"start":{"row":4,"column":2},"end":{"row":5,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":4,"column":2},"end":{"row":4,"column":3},"action":"insert","lines":["e"],"id":31},{"start":{"row":4,"column":3},"end":{"row":4,"column":4},"action":"insert","lines":["n"]},{"start":{"row":4,"column":4},"end":{"row":4,"column":5},"action":"insert","lines":["d"]}],[{"start":{"row":4,"column":2},"end":{"row":4,"column":5},"action":"remove","lines":["end"],"id":32},{"start":{"row":4,"column":2},"end":{"row":4,"column":5},"action":"insert","lines":["end"]}],[{"start":{"row":4,"column":5},"end":{"row":5,"column":0},"action":"insert","lines":["",""],"id":33},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"insert","lines":["  "]},{"start":{"row":5,"column":2},"end":{"row":6,"column":0},"action":"insert","lines":["",""]},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "]},{"start":{"row":6,"column":2},"end":{"row":6,"column":3},"action":"insert","lines":["d"]},{"start":{"row":6,"column":3},"end":{"row":6,"column":4},"action":"insert","lines":["e"]},{"start":{"row":6,"column":4},"end":{"row":6,"column":5},"action":"insert","lines":["f"]}],[{"start":{"row":6,"column":5},"end":{"row":6,"column":6},"action":"insert","lines":[" "],"id":34},{"start":{"row":6,"column":6},"end":{"row":6,"column":7},"action":"insert","lines":["t"]},{"start":{"row":6,"column":7},"end":{"row":6,"column":8},"action":"insert","lines":["o"]}],[{"start":{"row":6,"column":8},"end":{"row":6,"column":9},"action":"insert","lines":["t"],"id":35},{"start":{"row":6,"column":9},"end":{"row":6,"column":10},"action":"insert","lines":["a"]},{"start":{"row":6,"column":10},"end":{"row":6,"column":11},"action":"insert","lines":["l"]}],[{"start":{"row":6,"column":10},"end":{"row":6,"column":11},"action":"remove","lines":["l"],"id":36},{"start":{"row":6,"column":9},"end":{"row":6,"column":10},"action":"remove","lines":["a"]},{"start":{"row":6,"column":8},"end":{"row":6,"column":9},"action":"remove","lines":["t"]},{"start":{"row":6,"column":7},"end":{"row":6,"column":8},"action":"remove","lines":["o"]},{"start":{"row":6,"column":6},"end":{"row":6,"column":7},"action":"remove","lines":["t"]},{"start":{"row":6,"column":5},"end":{"row":6,"column":6},"action":"remove","lines":[" "]},{"start":{"row":6,"column":4},"end":{"row":6,"column":5},"action":"remove","lines":["f"]},{"start":{"row":6,"column":3},"end":{"row":6,"column":4},"action":"remove","lines":["e"]},{"start":{"row":6,"column":2},"end":{"row":6,"column":3},"action":"remove","lines":["d"]}],[{"start":{"row":6,"column":2},"end":{"row":12,"column":5},"action":"insert","lines":["  def tax_total_price(price)","    array = []","    price.each do |cart_item|","      array << cart_item.item.price * 1.1 * cart_item.amount","    end","    array.sum.round","  end"],"id":37}],[{"start":{"row":6,"column":2},"end":{"row":6,"column":4},"action":"remove","lines":["  "],"id":38}],[{"start":{"row":9,"column":23},"end":{"row":9,"column":24},"action":"remove","lines":["m"],"id":39},{"start":{"row":9,"column":22},"end":{"row":9,"column":23},"action":"remove","lines":["e"]},{"start":{"row":9,"column":21},"end":{"row":9,"column":22},"action":"remove","lines":["t"]},{"start":{"row":9,"column":20},"end":{"row":9,"column":21},"action":"remove","lines":["i"]}],[{"start":{"row":9,"column":20},"end":{"row":9,"column":21},"action":"insert","lines":["p"],"id":40}],[{"start":{"row":9,"column":21},"end":{"row":9,"column":22},"action":"insert","lines":["a"],"id":41}],[{"start":{"row":9,"column":21},"end":{"row":9,"column":22},"action":"remove","lines":["a"],"id":42}],[{"start":{"row":9,"column":21},"end":{"row":9,"column":22},"action":"insert","lines":["r"],"id":43},{"start":{"row":9,"column":22},"end":{"row":9,"column":23},"action":"insert","lines":["o"]}],[{"start":{"row":9,"column":15},"end":{"row":9,"column":23},"action":"remove","lines":["cart_pro"],"id":44},{"start":{"row":9,"column":15},"end":{"row":9,"column":27},"action":"insert","lines":["cart_product"]}],[{"start":{"row":9,"column":31},"end":{"row":9,"column":32},"action":"remove","lines":["m"],"id":45},{"start":{"row":9,"column":30},"end":{"row":9,"column":31},"action":"remove","lines":["e"]},{"start":{"row":9,"column":29},"end":{"row":9,"column":30},"action":"remove","lines":["t"]},{"start":{"row":9,"column":28},"end":{"row":9,"column":29},"action":"remove","lines":["i"]}],[{"start":{"row":9,"column":28},"end":{"row":9,"column":29},"action":"insert","lines":["p"],"id":46}],[{"start":{"row":9,"column":28},"end":{"row":9,"column":29},"action":"remove","lines":["p"],"id":47},{"start":{"row":9,"column":28},"end":{"row":9,"column":35},"action":"insert","lines":["product"]}],[{"start":{"row":9,"column":58},"end":{"row":9,"column":59},"action":"remove","lines":["m"],"id":48},{"start":{"row":9,"column":57},"end":{"row":9,"column":58},"action":"remove","lines":["e"]},{"start":{"row":9,"column":56},"end":{"row":9,"column":57},"action":"remove","lines":["t"]},{"start":{"row":9,"column":55},"end":{"row":9,"column":56},"action":"remove","lines":["i"]}],[{"start":{"row":9,"column":55},"end":{"row":9,"column":56},"action":"insert","lines":["p"],"id":49}],[{"start":{"row":9,"column":50},"end":{"row":9,"column":56},"action":"remove","lines":["cart_p"],"id":50},{"start":{"row":9,"column":50},"end":{"row":9,"column":62},"action":"insert","lines":["cart_product"]}],[{"start":{"row":9,"column":68},"end":{"row":9,"column":69},"action":"remove","lines":["t"],"id":51},{"start":{"row":9,"column":67},"end":{"row":9,"column":68},"action":"remove","lines":["n"]},{"start":{"row":9,"column":66},"end":{"row":9,"column":67},"action":"remove","lines":["u"]},{"start":{"row":9,"column":65},"end":{"row":9,"column":66},"action":"remove","lines":["o"]},{"start":{"row":9,"column":64},"end":{"row":9,"column":65},"action":"remove","lines":["m"]},{"start":{"row":9,"column":63},"end":{"row":9,"column":64},"action":"remove","lines":["a"]}],[{"start":{"row":9,"column":63},"end":{"row":9,"column":64},"action":"insert","lines":["q"],"id":52}],[{"start":{"row":9,"column":63},"end":{"row":9,"column":64},"action":"remove","lines":["q"],"id":53},{"start":{"row":9,"column":63},"end":{"row":9,"column":71},"action":"insert","lines":["quantity"]}],[{"start":{"row":8,"column":27},"end":{"row":8,"column":28},"action":"remove","lines":["m"],"id":54},{"start":{"row":8,"column":26},"end":{"row":8,"column":27},"action":"remove","lines":["e"]},{"start":{"row":8,"column":25},"end":{"row":8,"column":26},"action":"remove","lines":["t"]},{"start":{"row":8,"column":24},"end":{"row":8,"column":25},"action":"remove","lines":["i"]}],[{"start":{"row":8,"column":24},"end":{"row":8,"column":25},"action":"insert","lines":["p"],"id":55}],[{"start":{"row":8,"column":19},"end":{"row":8,"column":25},"action":"remove","lines":["cart_p"],"id":56},{"start":{"row":8,"column":19},"end":{"row":8,"column":31},"action":"insert","lines":["cart_product"]}],[{"start":{"row":9,"column":36},"end":{"row":9,"column":37},"action":"insert","lines":["p"],"id":57}],[{"start":{"row":9,"column":36},"end":{"row":9,"column":37},"action":"remove","lines":["p"],"id":58},{"start":{"row":9,"column":36},"end":{"row":9,"column":43},"action":"insert","lines":["product"]}],[{"start":{"row":9,"column":43},"end":{"row":9,"column":44},"action":"insert","lines":["_"],"id":59}],[{"start":{"row":8,"column":4},"end":{"row":8,"column":5},"action":"insert","lines":["p"],"id":60}],[{"start":{"row":7,"column":5},"end":{"row":8,"column":0},"action":"insert","lines":["",""],"id":61},{"start":{"row":8,"column":0},"end":{"row":8,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":8,"column":2},"end":{"row":8,"column":4},"action":"remove","lines":["  "],"id":62},{"start":{"row":8,"column":0},"end":{"row":8,"column":2},"action":"remove","lines":["  "]},{"start":{"row":7,"column":5},"end":{"row":8,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":8,"column":5},"end":{"row":8,"column":6},"action":"insert","lines":["r"],"id":63}],[{"start":{"row":8,"column":4},"end":{"row":8,"column":11},"action":"remove","lines":["prprice"],"id":64},{"start":{"row":8,"column":4},"end":{"row":8,"column":17},"action":"insert","lines":["product_price"]}],[{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"remove","lines":["  "],"id":65},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"remove","lines":["  "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":8,"column":11},"end":{"row":8,"column":12},"action":"remove","lines":["_"],"id":66},{"start":{"row":8,"column":10},"end":{"row":8,"column":11},"action":"remove","lines":["t"]},{"start":{"row":8,"column":9},"end":{"row":8,"column":10},"action":"remove","lines":["c"]},{"start":{"row":8,"column":8},"end":{"row":8,"column":9},"action":"remove","lines":["u"]},{"start":{"row":8,"column":7},"end":{"row":8,"column":8},"action":"remove","lines":["d"]},{"start":{"row":8,"column":6},"end":{"row":8,"column":7},"action":"remove","lines":["o"]},{"start":{"row":8,"column":5},"end":{"row":8,"column":6},"action":"remove","lines":["r"]},{"start":{"row":8,"column":4},"end":{"row":8,"column":5},"action":"remove","lines":["p"]}],[{"start":{"row":0,"column":24},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":67},{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"insert","lines":["  "]},{"start":{"row":1,"column":2},"end":{"row":2,"column":0},"action":"insert","lines":["",""]},{"start":{"row":2,"column":0},"end":{"row":2,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":2,"column":2},"end":{"row":2,"column":3},"action":"insert","lines":["s"],"id":68},{"start":{"row":2,"column":3},"end":{"row":2,"column":4},"action":"insert","lines":["u"]},{"start":{"row":2,"column":4},"end":{"row":2,"column":5},"action":"insert","lines":["b"]}],[{"start":{"row":2,"column":4},"end":{"row":2,"column":5},"action":"remove","lines":["b"],"id":69},{"start":{"row":2,"column":3},"end":{"row":2,"column":4},"action":"remove","lines":["u"]},{"start":{"row":2,"column":2},"end":{"row":2,"column":3},"action":"remove","lines":["s"]}],[{"start":{"row":2,"column":2},"end":{"row":2,"column":3},"action":"insert","lines":["d"],"id":70},{"start":{"row":2,"column":3},"end":{"row":2,"column":4},"action":"insert","lines":["e"]},{"start":{"row":2,"column":4},"end":{"row":2,"column":5},"action":"insert","lines":["f"]}],[{"start":{"row":2,"column":5},"end":{"row":2,"column":6},"action":"insert","lines":[" "],"id":71},{"start":{"row":2,"column":6},"end":{"row":2,"column":7},"action":"insert","lines":["s"]},{"start":{"row":2,"column":7},"end":{"row":2,"column":8},"action":"insert","lines":["u"]}],[{"start":{"row":2,"column":6},"end":{"row":2,"column":8},"action":"remove","lines":["su"],"id":72},{"start":{"row":2,"column":6},"end":{"row":2,"column":34},"action":"insert","lines":["gsub(/pattern/) { |match|  }"]}],[{"start":{"row":2,"column":33},"end":{"row":2,"column":34},"action":"remove","lines":["}"],"id":73},{"start":{"row":2,"column":32},"end":{"row":2,"column":33},"action":"remove","lines":[" "]},{"start":{"row":2,"column":31},"end":{"row":2,"column":32},"action":"remove","lines":[" "]},{"start":{"row":2,"column":30},"end":{"row":2,"column":31},"action":"remove","lines":["|"]},{"start":{"row":2,"column":29},"end":{"row":2,"column":30},"action":"remove","lines":["h"]},{"start":{"row":2,"column":28},"end":{"row":2,"column":29},"action":"remove","lines":["c"]},{"start":{"row":2,"column":27},"end":{"row":2,"column":28},"action":"remove","lines":["t"]},{"start":{"row":2,"column":26},"end":{"row":2,"column":27},"action":"remove","lines":["a"]},{"start":{"row":2,"column":25},"end":{"row":2,"column":26},"action":"remove","lines":["m"]},{"start":{"row":2,"column":24},"end":{"row":2,"column":25},"action":"remove","lines":["|"]},{"start":{"row":2,"column":23},"end":{"row":2,"column":24},"action":"remove","lines":[" "]},{"start":{"row":2,"column":22},"end":{"row":2,"column":23},"action":"remove","lines":["{"]},{"start":{"row":2,"column":21},"end":{"row":2,"column":22},"action":"remove","lines":[" "]},{"start":{"row":2,"column":20},"end":{"row":2,"column":21},"action":"remove","lines":[")"]},{"start":{"row":2,"column":19},"end":{"row":2,"column":20},"action":"remove","lines":["/"]},{"start":{"row":2,"column":18},"end":{"row":2,"column":19},"action":"remove","lines":["n"]},{"start":{"row":2,"column":17},"end":{"row":2,"column":18},"action":"remove","lines":["r"]},{"start":{"row":2,"column":16},"end":{"row":2,"column":17},"action":"remove","lines":["e"]},{"start":{"row":2,"column":15},"end":{"row":2,"column":16},"action":"remove","lines":["t"]},{"start":{"row":2,"column":14},"end":{"row":2,"column":15},"action":"remove","lines":["t"]},{"start":{"row":2,"column":13},"end":{"row":2,"column":14},"action":"remove","lines":["a"]},{"start":{"row":2,"column":12},"end":{"row":2,"column":13},"action":"remove","lines":["p"]},{"start":{"row":2,"column":11},"end":{"row":2,"column":12},"action":"remove","lines":["/"]},{"start":{"row":2,"column":10},"end":{"row":2,"column":11},"action":"remove","lines":["("]},{"start":{"row":2,"column":9},"end":{"row":2,"column":10},"action":"remove","lines":["b"]},{"start":{"row":2,"column":8},"end":{"row":2,"column":9},"action":"remove","lines":["u"]}],[{"start":{"row":2,"column":7},"end":{"row":2,"column":8},"action":"remove","lines":["s"],"id":74},{"start":{"row":2,"column":6},"end":{"row":2,"column":7},"action":"remove","lines":["g"]}],[{"start":{"row":2,"column":6},"end":{"row":2,"column":7},"action":"insert","lines":["s"],"id":75},{"start":{"row":2,"column":7},"end":{"row":2,"column":8},"action":"insert","lines":["u"]},{"start":{"row":2,"column":8},"end":{"row":2,"column":9},"action":"insert","lines":["b"]}],[{"start":{"row":2,"column":9},"end":{"row":2,"column":10},"action":"insert","lines":["_"],"id":76},{"start":{"row":2,"column":10},"end":{"row":2,"column":11},"action":"insert","lines":["a"]},{"start":{"row":2,"column":11},"end":{"row":2,"column":12},"action":"insert","lines":["t"]}],[{"start":{"row":2,"column":12},"end":{"row":2,"column":13},"action":"insert","lines":["o"],"id":77},{"start":{"row":2,"column":13},"end":{"row":2,"column":14},"action":"insert","lines":["t"]},{"start":{"row":2,"column":14},"end":{"row":2,"column":15},"action":"insert","lines":["a"]},{"start":{"row":2,"column":15},"end":{"row":2,"column":16},"action":"insert","lines":["l"]}],[{"start":{"row":2,"column":16},"end":{"row":2,"column":18},"action":"insert","lines":["()"],"id":78}],[{"start":{"row":2,"column":17},"end":{"row":2,"column":18},"action":"insert","lines":["p"],"id":79},{"start":{"row":2,"column":18},"end":{"row":2,"column":19},"action":"insert","lines":["r"]},{"start":{"row":2,"column":19},"end":{"row":2,"column":20},"action":"insert","lines":["i"]},{"start":{"row":2,"column":20},"end":{"row":2,"column":21},"action":"insert","lines":["c"]},{"start":{"row":2,"column":21},"end":{"row":2,"column":22},"action":"insert","lines":["e"]}],[{"start":{"row":2,"column":22},"end":{"row":2,"column":23},"action":"insert","lines":[","],"id":80},{"start":{"row":2,"column":23},"end":{"row":2,"column":24},"action":"insert","lines":["q"]}],[{"start":{"row":2,"column":23},"end":{"row":2,"column":24},"action":"remove","lines":["q"],"id":81},{"start":{"row":2,"column":23},"end":{"row":2,"column":31},"action":"insert","lines":["quantity"]}],[{"start":{"row":2,"column":32},"end":{"row":3,"column":0},"action":"insert","lines":["",""],"id":82},{"start":{"row":3,"column":0},"end":{"row":3,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":3,"column":2},"end":{"row":3,"column":4},"action":"remove","lines":["  "],"id":83}],[{"start":{"row":3,"column":2},"end":{"row":3,"column":3},"action":"insert","lines":["e"],"id":84},{"start":{"row":3,"column":3},"end":{"row":3,"column":4},"action":"insert","lines":["n"]},{"start":{"row":3,"column":4},"end":{"row":3,"column":5},"action":"insert","lines":["d"]},{"start":{"row":3,"column":0},"end":{"row":3,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":3,"column":0},"end":{"row":3,"column":1},"action":"insert","lines":[" "],"id":85},{"start":{"row":3,"column":1},"end":{"row":3,"column":2},"action":"insert","lines":[" "]}],[{"start":{"row":2,"column":32},"end":{"row":3,"column":0},"action":"insert","lines":["",""],"id":86},{"start":{"row":3,"column":0},"end":{"row":3,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":3,"column":4},"end":{"row":3,"column":6},"action":"insert","lines":["()"],"id":87}],[{"start":{"row":3,"column":5},"end":{"row":3,"column":6},"action":"insert","lines":["p"],"id":88},{"start":{"row":3,"column":6},"end":{"row":3,"column":7},"action":"insert","lines":["r"]}],[{"start":{"row":3,"column":6},"end":{"row":3,"column":7},"action":"remove","lines":["r"],"id":89}],[{"start":{"row":3,"column":6},"end":{"row":3,"column":7},"action":"insert","lines":["r"],"id":90},{"start":{"row":3,"column":7},"end":{"row":3,"column":8},"action":"insert","lines":["i"]},{"start":{"row":3,"column":8},"end":{"row":3,"column":9},"action":"insert","lines":["c"]},{"start":{"row":3,"column":9},"end":{"row":3,"column":10},"action":"insert","lines":["e"]}],[{"start":{"row":3,"column":10},"end":{"row":3,"column":11},"action":"insert","lines":[" "],"id":91},{"start":{"row":3,"column":11},"end":{"row":3,"column":12},"action":"insert","lines":["*"]}],[{"start":{"row":3,"column":12},"end":{"row":3,"column":13},"action":"insert","lines":[" "],"id":92}],[{"start":{"row":3,"column":13},"end":{"row":3,"column":14},"action":"insert","lines":["1"],"id":93},{"start":{"row":3,"column":14},"end":{"row":3,"column":15},"action":"insert","lines":["."]},{"start":{"row":3,"column":15},"end":{"row":3,"column":16},"action":"insert","lines":["1"]}],[{"start":{"row":3,"column":17},"end":{"row":3,"column":18},"action":"insert","lines":["."],"id":94},{"start":{"row":3,"column":18},"end":{"row":3,"column":19},"action":"insert","lines":["r"]},{"start":{"row":3,"column":19},"end":{"row":3,"column":20},"action":"insert","lines":["o"]},{"start":{"row":3,"column":20},"end":{"row":3,"column":21},"action":"insert","lines":["u"]}],[{"start":{"row":3,"column":18},"end":{"row":3,"column":21},"action":"remove","lines":["rou"],"id":95},{"start":{"row":3,"column":18},"end":{"row":3,"column":23},"action":"insert","lines":["round"]}],[{"start":{"row":2,"column":9},"end":{"row":2,"column":10},"action":"remove","lines":["_"],"id":96}],[{"start":{"row":2,"column":9},"end":{"row":2,"column":10},"action":"remove","lines":["a"],"id":97}],[{"start":{"row":2,"column":0},"end":{"row":4,"column":5},"action":"remove","lines":["  def subtotal(price,quantity)","    (price * 1.1).round","  end"],"id":98}],[{"start":{"row":2,"column":0},"end":{"row":4,"column":5},"action":"insert","lines":["  def tax_price(price)","    (price * 1.1).round","  end"],"id":99}],[{"start":{"row":16,"column":5},"end":{"row":17,"column":0},"action":"insert","lines":["",""],"id":100},{"start":{"row":17,"column":0},"end":{"row":17,"column":2},"action":"insert","lines":["  "]},{"start":{"row":17,"column":2},"end":{"row":18,"column":0},"action":"insert","lines":["",""]},{"start":{"row":18,"column":0},"end":{"row":18,"column":2},"action":"insert","lines":["  "]},{"start":{"row":18,"column":2},"end":{"row":18,"column":3},"action":"insert","lines":["d"]},{"start":{"row":18,"column":3},"end":{"row":18,"column":4},"action":"insert","lines":["e"]},{"start":{"row":18,"column":4},"end":{"row":18,"column":5},"action":"insert","lines":["f"]}],[{"start":{"row":18,"column":5},"end":{"row":18,"column":6},"action":"insert","lines":[" "],"id":101}],[{"start":{"row":18,"column":6},"end":{"row":18,"column":34},"action":"insert","lines":["tax_subtotal(price,quantity)"],"id":102}],[{"start":{"row":18,"column":34},"end":{"row":19,"column":0},"action":"insert","lines":["",""],"id":103},{"start":{"row":19,"column":0},"end":{"row":19,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":19,"column":2},"end":{"row":19,"column":4},"action":"remove","lines":["  "],"id":104}],[{"start":{"row":19,"column":2},"end":{"row":19,"column":3},"action":"insert","lines":["e"],"id":105},{"start":{"row":19,"column":3},"end":{"row":19,"column":4},"action":"insert","lines":["n"]},{"start":{"row":19,"column":4},"end":{"row":19,"column":5},"action":"insert","lines":["d"]},{"start":{"row":19,"column":0},"end":{"row":19,"column":2},"action":"remove","lines":["  "]}],[{"start":{"row":19,"column":0},"end":{"row":19,"column":1},"action":"insert","lines":[" "],"id":106},{"start":{"row":19,"column":1},"end":{"row":19,"column":2},"action":"insert","lines":[" "]}],[{"start":{"row":18,"column":34},"end":{"row":19,"column":0},"action":"insert","lines":["",""],"id":107},{"start":{"row":19,"column":0},"end":{"row":19,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":19,"column":4},"end":{"row":19,"column":6},"action":"insert","lines":["()"],"id":108}],[{"start":{"row":19,"column":5},"end":{"row":19,"column":6},"action":"insert","lines":["p"],"id":109},{"start":{"row":19,"column":6},"end":{"row":19,"column":7},"action":"insert","lines":["r"]},{"start":{"row":19,"column":7},"end":{"row":19,"column":8},"action":"insert","lines":["i"]},{"start":{"row":19,"column":8},"end":{"row":19,"column":9},"action":"insert","lines":["c"]},{"start":{"row":19,"column":9},"end":{"row":19,"column":10},"action":"insert","lines":["e"]}],[{"start":{"row":19,"column":10},"end":{"row":19,"column":11},"action":"insert","lines":["*"],"id":110},{"start":{"row":19,"column":11},"end":{"row":19,"column":12},"action":"insert","lines":["q"]}],[{"start":{"row":19,"column":11},"end":{"row":19,"column":12},"action":"remove","lines":["q"],"id":111},{"start":{"row":19,"column":11},"end":{"row":19,"column":19},"action":"insert","lines":["quantity"]}],[{"start":{"row":19,"column":19},"end":{"row":19,"column":20},"action":"insert","lines":["*"],"id":112},{"start":{"row":19,"column":20},"end":{"row":19,"column":21},"action":"insert","lines":["1"]},{"start":{"row":19,"column":21},"end":{"row":19,"column":22},"action":"insert","lines":["."]},{"start":{"row":19,"column":22},"end":{"row":19,"column":23},"action":"insert","lines":["1"]}],[{"start":{"row":19,"column":20},"end":{"row":19,"column":21},"action":"insert","lines":[" "],"id":113}],[{"start":{"row":19,"column":19},"end":{"row":19,"column":20},"action":"insert","lines":[" "],"id":114},{"start":{"row":19,"column":11},"end":{"row":19,"column":12},"action":"insert","lines":[" "]}],[{"start":{"row":19,"column":10},"end":{"row":19,"column":11},"action":"insert","lines":[" "],"id":115}],[{"start":{"row":19,"column":28},"end":{"row":19,"column":29},"action":"insert","lines":["."],"id":116},{"start":{"row":19,"column":29},"end":{"row":19,"column":30},"action":"insert","lines":["r"]},{"start":{"row":19,"column":30},"end":{"row":19,"column":31},"action":"insert","lines":["o"]},{"start":{"row":19,"column":31},"end":{"row":19,"column":32},"action":"insert","lines":["u"]},{"start":{"row":19,"column":32},"end":{"row":19,"column":33},"action":"insert","lines":["n"]},{"start":{"row":19,"column":33},"end":{"row":19,"column":34},"action":"insert","lines":["d"]}],[{"start":{"row":18,"column":0},"end":{"row":20,"column":5},"action":"remove","lines":["  def tax_subtotal(price,quantity)","    (price * quantity * 1.1).round","  end"],"id":117},{"start":{"row":18,"column":0},"end":{"row":19,"column":0},"action":"insert","lines":["",""]},{"start":{"row":19,"column":0},"end":{"row":20,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":19,"column":0},"end":{"row":20,"column":0},"action":"remove","lines":["",""],"id":118},{"start":{"row":18,"column":0},"end":{"row":19,"column":0},"action":"remove","lines":["",""]},{"start":{"row":17,"column":2},"end":{"row":18,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":17,"column":2},"end":{"row":18,"column":0},"action":"remove","lines":["",""],"id":119}],[{"start":{"row":17,"column":2},"end":{"row":19,"column":5},"action":"insert","lines":["  def unchecked_notifications","    @notifications = current_shop.passive_notifications.where(checked: false)","  end"],"id":120}],[{"start":{"row":16,"column":5},"end":{"row":17,"column":0},"action":"insert","lines":["",""],"id":121},{"start":{"row":17,"column":0},"end":{"row":17,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":18,"column":4},"end":{"row":19,"column":0},"action":"insert","lines":["",""],"id":122},{"start":{"row":19,"column":0},"end":{"row":19,"column":4},"action":"insert","lines":["    "]}],[{"start":{"row":19,"column":2},"end":{"row":19,"column":4},"action":"remove","lines":["  "],"id":123}],[{"start":{"row":18,"column":2},"end":{"row":18,"column":4},"action":"remove","lines":["  "],"id":124},{"start":{"row":18,"column":0},"end":{"row":18,"column":2},"action":"remove","lines":["  "]},{"start":{"row":17,"column":2},"end":{"row":18,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":20,"column":5},"end":{"row":21,"column":0},"action":"insert","lines":["",""],"id":125},{"start":{"row":21,"column":0},"end":{"row":21,"column":2},"action":"insert","lines":["  "]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":2,"column":6},"end":{"row":2,"column":15},"isBackwards":true},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1623332550464,"hash":"33f7d7311a216d31b0e6b2a2dca3c1ce9f4df96b"}