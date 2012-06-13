require 'rails_rinku'

module ApplicationHelper
 def show_flash
      [:notice, :errors, :alert].collect do |key|
        msg = (flash[key].to_s + " (click to close)")
        content_tag(:div, (content_tag(:a, msg, :class => "#{key}", :href => "#", :onclick => "$('messages').fade(); return false;")), :id => key, :class => "flash_#{key}") unless flash[key].blank?
      end.join
  end
  def show_flash_old
    [:notice, :error, :warning].collect do |key|
      content_tag(:div, flash[key], :id => key, :class => "flash flash_#{key}") unless flash[key].blank?
    end.join
  end
end