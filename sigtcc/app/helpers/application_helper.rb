module ApplicationHelper
  def flash_message
    messages = ""
    [:notice, :info, :warning, :error, :alert].each {|type|
      if flash[type]
        messages += flash[type]
      end
    }

    messages
  end
end
