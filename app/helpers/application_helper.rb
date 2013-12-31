module ApplicationHelper
  # 获取操作系统
  def os
    os = case request.user_agent.downcase
           when /iphone|ipad|itouch/
             "ios"
           when /android/
             "android"
           when /mac/
             "mac"
           when /windows/
             "win"
         end
    return ActiveSupport::StringInquirer.new(os)
  end

  # 导航项是否高亮，手工设置 @curr_nav 变量来实现
  def nav_class(name)
    "active" if @curr_nav == name
  end
end