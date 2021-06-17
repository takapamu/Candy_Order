{"filter":false,"title":"event.rb","tooltip":"/candy_order/app/models/event.rb","undoManager":{"mark":19,"position":19,"stack":[[{"start":{"row":0,"column":31},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"insert","lines":["  "]},{"start":{"row":1,"column":2},"end":{"row":2,"column":0},"action":"insert","lines":["",""]},{"start":{"row":2,"column":0},"end":{"row":2,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":2,"column":2},"end":{"row":6,"column":56},"action":"insert","lines":["  validates :product_name, presence: true,length: { minimum: 1, maximum: 20 }","  validates :product_introduction, presence: true,length: { minimum: 1, maximum: 100 }","  validates :product_company, presence: true","  validates :product_price,numericality: {greater_than: 0}","  validates :is_active, inclusion: { in: [true, false] }"],"id":3}],[{"start":{"row":6,"column":56},"end":{"row":7,"column":0},"action":"insert","lines":["",""],"id":4},{"start":{"row":7,"column":0},"end":{"row":7,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":5,"column":0},"end":{"row":7,"column":2},"action":"remove","lines":["  validates :product_price,numericality: {greater_than: 0}","  validates :is_active, inclusion: { in: [true, false] }","  "],"id":5}],[{"start":{"row":2,"column":2},"end":{"row":2,"column":4},"action":"remove","lines":["  "],"id":6}],[{"start":{"row":2,"column":24},"end":{"row":2,"column":25},"action":"remove","lines":["e"],"id":7},{"start":{"row":2,"column":23},"end":{"row":2,"column":24},"action":"remove","lines":["m"]},{"start":{"row":2,"column":22},"end":{"row":2,"column":23},"action":"remove","lines":["a"]},{"start":{"row":2,"column":21},"end":{"row":2,"column":22},"action":"remove","lines":["n"]},{"start":{"row":2,"column":20},"end":{"row":2,"column":21},"action":"remove","lines":["_"]},{"start":{"row":2,"column":19},"end":{"row":2,"column":20},"action":"remove","lines":["t"]},{"start":{"row":2,"column":18},"end":{"row":2,"column":19},"action":"remove","lines":["c"]},{"start":{"row":2,"column":17},"end":{"row":2,"column":18},"action":"remove","lines":["u"]},{"start":{"row":2,"column":16},"end":{"row":2,"column":17},"action":"remove","lines":["d"]},{"start":{"row":2,"column":15},"end":{"row":2,"column":16},"action":"remove","lines":["o"]},{"start":{"row":2,"column":14},"end":{"row":2,"column":15},"action":"remove","lines":["r"]},{"start":{"row":2,"column":13},"end":{"row":2,"column":14},"action":"remove","lines":["p"]}],[{"start":{"row":2,"column":13},"end":{"row":2,"column":14},"action":"insert","lines":["t"],"id":8},{"start":{"row":2,"column":14},"end":{"row":2,"column":15},"action":"insert","lines":["i"]},{"start":{"row":2,"column":15},"end":{"row":2,"column":16},"action":"insert","lines":["t"]},{"start":{"row":2,"column":16},"end":{"row":2,"column":17},"action":"insert","lines":["l"]},{"start":{"row":2,"column":17},"end":{"row":2,"column":18},"action":"insert","lines":["w"]}],[{"start":{"row":2,"column":17},"end":{"row":2,"column":18},"action":"remove","lines":["w"],"id":9}],[{"start":{"row":2,"column":17},"end":{"row":2,"column":18},"action":"insert","lines":["e"],"id":10}],[{"start":{"row":3,"column":32},"end":{"row":3,"column":33},"action":"remove","lines":["n"],"id":11},{"start":{"row":3,"column":31},"end":{"row":3,"column":32},"action":"remove","lines":["o"]},{"start":{"row":3,"column":30},"end":{"row":3,"column":31},"action":"remove","lines":["i"]},{"start":{"row":3,"column":29},"end":{"row":3,"column":30},"action":"remove","lines":["t"]},{"start":{"row":3,"column":28},"end":{"row":3,"column":29},"action":"remove","lines":["c"]},{"start":{"row":3,"column":27},"end":{"row":3,"column":28},"action":"remove","lines":["u"]},{"start":{"row":3,"column":26},"end":{"row":3,"column":27},"action":"remove","lines":["d"]},{"start":{"row":3,"column":25},"end":{"row":3,"column":26},"action":"remove","lines":["o"]},{"start":{"row":3,"column":24},"end":{"row":3,"column":25},"action":"remove","lines":["r"]},{"start":{"row":3,"column":23},"end":{"row":3,"column":24},"action":"remove","lines":["t"]},{"start":{"row":3,"column":22},"end":{"row":3,"column":23},"action":"remove","lines":["n"]},{"start":{"row":3,"column":21},"end":{"row":3,"column":22},"action":"remove","lines":["i"]},{"start":{"row":3,"column":20},"end":{"row":3,"column":21},"action":"remove","lines":["_"]},{"start":{"row":3,"column":19},"end":{"row":3,"column":20},"action":"remove","lines":["t"]},{"start":{"row":3,"column":18},"end":{"row":3,"column":19},"action":"remove","lines":["c"]},{"start":{"row":3,"column":17},"end":{"row":3,"column":18},"action":"remove","lines":["u"]},{"start":{"row":3,"column":16},"end":{"row":3,"column":17},"action":"remove","lines":["d"]},{"start":{"row":3,"column":15},"end":{"row":3,"column":16},"action":"remove","lines":["o"]},{"start":{"row":3,"column":14},"end":{"row":3,"column":15},"action":"remove","lines":["r"]}],[{"start":{"row":3,"column":13},"end":{"row":3,"column":14},"action":"remove","lines":["p"],"id":12}],[{"start":{"row":3,"column":13},"end":{"row":3,"column":14},"action":"insert","lines":["c"],"id":13},{"start":{"row":3,"column":14},"end":{"row":3,"column":15},"action":"insert","lines":["i"]}],[{"start":{"row":3,"column":14},"end":{"row":3,"column":15},"action":"remove","lines":["i"],"id":14}],[{"start":{"row":3,"column":14},"end":{"row":3,"column":15},"action":"insert","lines":["o"],"id":15},{"start":{"row":3,"column":15},"end":{"row":3,"column":16},"action":"insert","lines":["n"]},{"start":{"row":3,"column":16},"end":{"row":3,"column":17},"action":"insert","lines":["t"]},{"start":{"row":3,"column":17},"end":{"row":3,"column":18},"action":"insert","lines":["e"]},{"start":{"row":3,"column":18},"end":{"row":3,"column":19},"action":"insert","lines":["b"]}],[{"start":{"row":3,"column":18},"end":{"row":3,"column":19},"action":"remove","lines":["b"],"id":16}],[{"start":{"row":3,"column":18},"end":{"row":3,"column":19},"action":"insert","lines":["n"],"id":17},{"start":{"row":3,"column":19},"end":{"row":3,"column":20},"action":"insert","lines":["t"]}],[{"start":{"row":4,"column":27},"end":{"row":4,"column":28},"action":"remove","lines":["y"],"id":18},{"start":{"row":4,"column":26},"end":{"row":4,"column":27},"action":"remove","lines":["n"]},{"start":{"row":4,"column":25},"end":{"row":4,"column":26},"action":"remove","lines":["a"]},{"start":{"row":4,"column":24},"end":{"row":4,"column":25},"action":"remove","lines":["p"]},{"start":{"row":4,"column":23},"end":{"row":4,"column":24},"action":"remove","lines":["m"]},{"start":{"row":4,"column":22},"end":{"row":4,"column":23},"action":"remove","lines":["o"]},{"start":{"row":4,"column":21},"end":{"row":4,"column":22},"action":"remove","lines":["c"]},{"start":{"row":4,"column":20},"end":{"row":4,"column":21},"action":"remove","lines":["_"]},{"start":{"row":4,"column":19},"end":{"row":4,"column":20},"action":"remove","lines":["t"]},{"start":{"row":4,"column":18},"end":{"row":4,"column":19},"action":"remove","lines":["c"]},{"start":{"row":4,"column":17},"end":{"row":4,"column":18},"action":"remove","lines":["u"]},{"start":{"row":4,"column":16},"end":{"row":4,"column":17},"action":"remove","lines":["d"]},{"start":{"row":4,"column":15},"end":{"row":4,"column":16},"action":"remove","lines":["o"]},{"start":{"row":4,"column":14},"end":{"row":4,"column":15},"action":"remove","lines":["r"]},{"start":{"row":4,"column":13},"end":{"row":4,"column":14},"action":"remove","lines":["p"]}],[{"start":{"row":4,"column":13},"end":{"row":4,"column":14},"action":"insert","lines":["s"],"id":19}],[{"start":{"row":4,"column":14},"end":{"row":4,"column":15},"action":"insert","lines":["t"],"id":20},{"start":{"row":4,"column":15},"end":{"row":4,"column":16},"action":"insert","lines":["a"]},{"start":{"row":4,"column":16},"end":{"row":4,"column":17},"action":"insert","lines":["r"]},{"start":{"row":4,"column":17},"end":{"row":4,"column":18},"action":"insert","lines":["t"]}],[{"start":{"row":4,"column":13},"end":{"row":4,"column":18},"action":"remove","lines":["start"],"id":21},{"start":{"row":4,"column":13},"end":{"row":4,"column":23},"action":"insert","lines":["start_time"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":7,"column":0},"end":{"row":7,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1623905862840,"hash":"7ae24e7750c269e83c61448a9724692fae5199fc"}