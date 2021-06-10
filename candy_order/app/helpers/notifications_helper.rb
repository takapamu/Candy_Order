module NotificationsHelper
    def notification_form(notification)

      case notification.action
        when "created_at" then
          "新着商品があります"
      end
    end
end
