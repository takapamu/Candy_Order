{"filter":false,"title":"notifications_helper.rb","tooltip":"/candy_order/app/helpers/notifications_helper.rb","undoManager":{"mark":29,"position":29,"stack":[[{"start":{"row":0,"column":26},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":2},{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":1,"column":2},"end":{"row":3,"column":3},"action":"insert","lines":["def unchecked_notifications","    @notifications = current_user.passive_notifications.where(checked: false)","end"],"id":3}],[{"start":{"row":3,"column":0},"end":{"row":3,"column":1},"action":"insert","lines":[" "],"id":4},{"start":{"row":3,"column":1},"end":{"row":3,"column":2},"action":"insert","lines":[" "]}],[{"start":{"row":2,"column":33},"end":{"row":2,"column":34},"action":"insert","lines":["z"],"id":5}],[{"start":{"row":2,"column":33},"end":{"row":2,"column":34},"action":"remove","lines":["z"],"id":6},{"start":{"row":2,"column":32},"end":{"row":2,"column":33},"action":"remove","lines":["r"]},{"start":{"row":2,"column":31},"end":{"row":2,"column":32},"action":"remove","lines":["e"]},{"start":{"row":2,"column":30},"end":{"row":2,"column":31},"action":"remove","lines":["s"]},{"start":{"row":2,"column":29},"end":{"row":2,"column":30},"action":"remove","lines":["u"]}],[{"start":{"row":2,"column":29},"end":{"row":2,"column":30},"action":"insert","lines":["a"],"id":7},{"start":{"row":2,"column":30},"end":{"row":2,"column":31},"action":"insert","lines":["h"]},{"start":{"row":2,"column":31},"end":{"row":2,"column":32},"action":"insert","lines":["o"]},{"start":{"row":2,"column":32},"end":{"row":2,"column":33},"action":"insert","lines":["p"]}],[{"start":{"row":2,"column":32},"end":{"row":2,"column":33},"action":"remove","lines":["p"],"id":8},{"start":{"row":2,"column":31},"end":{"row":2,"column":32},"action":"remove","lines":["o"]},{"start":{"row":2,"column":30},"end":{"row":2,"column":31},"action":"remove","lines":["h"]},{"start":{"row":2,"column":29},"end":{"row":2,"column":30},"action":"remove","lines":["a"]}],[{"start":{"row":2,"column":29},"end":{"row":2,"column":30},"action":"insert","lines":["a"],"id":9},{"start":{"row":2,"column":30},"end":{"row":2,"column":31},"action":"insert","lines":["h"]},{"start":{"row":2,"column":31},"end":{"row":2,"column":32},"action":"insert","lines":["o"]},{"start":{"row":2,"column":32},"end":{"row":2,"column":33},"action":"insert","lines":["p"]}],[{"start":{"row":2,"column":32},"end":{"row":2,"column":33},"action":"remove","lines":["p"],"id":10},{"start":{"row":2,"column":31},"end":{"row":2,"column":32},"action":"remove","lines":["o"]},{"start":{"row":2,"column":30},"end":{"row":2,"column":31},"action":"remove","lines":["h"]},{"start":{"row":2,"column":29},"end":{"row":2,"column":30},"action":"remove","lines":["a"]}],[{"start":{"row":2,"column":29},"end":{"row":2,"column":30},"action":"insert","lines":["s"],"id":11},{"start":{"row":2,"column":30},"end":{"row":2,"column":31},"action":"insert","lines":["h"]},{"start":{"row":2,"column":31},"end":{"row":2,"column":32},"action":"insert","lines":["o"]},{"start":{"row":2,"column":32},"end":{"row":2,"column":33},"action":"insert","lines":["p"]}],[{"start":{"row":2,"column":4},"end":{"row":2,"column":5},"action":"insert","lines":["#"],"id":12}],[{"start":{"row":2,"column":4},"end":{"row":2,"column":5},"action":"remove","lines":["#"],"id":13}],[{"start":{"row":1,"column":0},"end":{"row":3,"column":5},"action":"remove","lines":["  def unchecked_notifications","    @notifications = current_shop.passive_notifications.where(checked: false)","  end"],"id":14}],[{"start":{"row":1,"column":0},"end":{"row":1,"column":1},"action":"insert","lines":[" "],"id":15},{"start":{"row":1,"column":1},"end":{"row":1,"column":2},"action":"insert","lines":[" "]}],[{"start":{"row":1,"column":2},"end":{"row":16,"column":7},"action":"insert","lines":["   def notification_form(notification)","      @visiter = notification.visiter","      @comment = nil","      your_item = link_to 'あなたの投稿', users_item_path(notification), style:\"font-weight: bold;\"","      @visiter_comment = notification.comment_id","      #notification.actionがfollowかlikeかcommentか","      case notification.action","        when \"follow\" then","          tag.a(notification.visiter.name, href:users_user_path(@visiter), style:\"font-weight: bold;\")+\"があなたをフォローしました\"","        when \"like\" then","          tag.a(notification.visiter.name, href:users_user_path(@visiter), style:\"font-weight: bold;\")+\"が\"+tag.a('あなたの投稿', href:users_item_path(notification.item_id), style:\"font-weight: bold;\")+\"にいいねしました\"","        when \"comment\" then","            @comment = Comment.find_by(id: @visiter_comment)&.content","            tag.a(@visiter.name, href:users_user_path(@visiter), style:\"font-weight: bold;\")+\"が\"+tag.a('あなたの投稿', href:users_item_path(notification.item_id), style:\"font-weight: bold;\")+\"にコメントしました\"","      end","    end"],"id":16}],[{"start":{"row":3,"column":0},"end":{"row":3,"column":20},"action":"remove","lines":["      @comment = nil"],"id":17},{"start":{"row":2,"column":37},"end":{"row":3,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":3,"column":0},"end":{"row":3,"column":93},"action":"remove","lines":["      your_item = link_to 'あなたの投稿', users_item_path(notification), style:\"font-weight: bold;\""],"id":18},{"start":{"row":2,"column":37},"end":{"row":3,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":2,"column":0},"end":{"row":4,"column":47},"action":"remove","lines":["      @visiter = notification.visiter","      @visiter_comment = notification.comment_id","      #notification.actionがfollowかlikeかcommentか"],"id":19}],[{"start":{"row":6,"column":0},"end":{"row":10,"column":196},"action":"remove","lines":["        when \"like\" then","          tag.a(notification.visiter.name, href:users_user_path(@visiter), style:\"font-weight: bold;\")+\"が\"+tag.a('あなたの投稿', href:users_item_path(notification.item_id), style:\"font-weight: bold;\")+\"にいいねしました\"","        when \"comment\" then","            @comment = Comment.find_by(id: @visiter_comment)&.content","            tag.a(@visiter.name, href:users_user_path(@visiter), style:\"font-weight: bold;\")+\"が\"+tag.a('あなたの投稿', href:users_item_path(notification.item_id), style:\"font-weight: bold;\")+\"にコメントしました\""],"id":20},{"start":{"row":5,"column":118},"end":{"row":6,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":1,"column":4},"end":{"row":1,"column":5},"action":"remove","lines":[" "],"id":21}],[{"start":{"row":4,"column":19},"end":{"row":4,"column":20},"action":"remove","lines":["w"],"id":22},{"start":{"row":4,"column":18},"end":{"row":4,"column":19},"action":"remove","lines":["o"]},{"start":{"row":4,"column":17},"end":{"row":4,"column":18},"action":"remove","lines":["l"]},{"start":{"row":4,"column":16},"end":{"row":4,"column":17},"action":"remove","lines":["l"]},{"start":{"row":4,"column":15},"end":{"row":4,"column":16},"action":"remove","lines":["o"]},{"start":{"row":4,"column":14},"end":{"row":4,"column":15},"action":"remove","lines":["f"]}],[{"start":{"row":4,"column":14},"end":{"row":4,"column":15},"action":"insert","lines":["c"],"id":23}],[{"start":{"row":4,"column":15},"end":{"row":4,"column":16},"action":"insert","lines":["r"],"id":24},{"start":{"row":4,"column":16},"end":{"row":4,"column":17},"action":"insert","lines":["e"]},{"start":{"row":4,"column":17},"end":{"row":4,"column":18},"action":"insert","lines":["a"]}],[{"start":{"row":4,"column":14},"end":{"row":4,"column":18},"action":"remove","lines":["crea"],"id":25},{"start":{"row":4,"column":14},"end":{"row":4,"column":24},"action":"insert","lines":["created_at"]}],[{"start":{"row":5,"column":10},"end":{"row":5,"column":103},"action":"remove","lines":["tag.a(notification.visiter.name, href:users_user_path(@visiter), style:\"font-weight: bold;\")+"],"id":30}],[{"start":{"row":5,"column":11},"end":{"row":5,"column":12},"action":"remove","lines":["が"],"id":31}],[{"start":{"row":5,"column":22},"end":{"row":5,"column":23},"action":"remove","lines":["た"],"id":32},{"start":{"row":5,"column":21},"end":{"row":5,"column":22},"action":"remove","lines":["し"]},{"start":{"row":5,"column":20},"end":{"row":5,"column":21},"action":"remove","lines":["ま"]},{"start":{"row":5,"column":19},"end":{"row":5,"column":20},"action":"remove","lines":["し"]},{"start":{"row":5,"column":18},"end":{"row":5,"column":19},"action":"remove","lines":["ー"]},{"start":{"row":5,"column":17},"end":{"row":5,"column":18},"action":"remove","lines":["ロ"]},{"start":{"row":5,"column":16},"end":{"row":5,"column":17},"action":"remove","lines":["ォ"]},{"start":{"row":5,"column":15},"end":{"row":5,"column":16},"action":"remove","lines":["フ"]},{"start":{"row":5,"column":14},"end":{"row":5,"column":15},"action":"remove","lines":["を"]},{"start":{"row":5,"column":13},"end":{"row":5,"column":14},"action":"remove","lines":["た"]},{"start":{"row":5,"column":12},"end":{"row":5,"column":13},"action":"remove","lines":["な"]},{"start":{"row":5,"column":11},"end":{"row":5,"column":12},"action":"remove","lines":["あ"]}],[{"start":{"row":5,"column":11},"end":{"row":5,"column":13},"action":"insert","lines":["新着"],"id":33}],[{"start":{"row":5,"column":13},"end":{"row":5,"column":16},"action":"insert","lines":["商品が"],"id":34}],[{"start":{"row":5,"column":16},"end":{"row":5,"column":20},"action":"insert","lines":["あります"],"id":35}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":7,"column":7},"end":{"row":7,"column":7},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1623333038333,"hash":"d65355002a8959c540fe7302b1df4980b43cfe4b"}