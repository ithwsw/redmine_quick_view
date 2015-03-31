#coding: utf-8

require_dependency File.expand_path('../app/helpers/application_helper.rb', __FILE__)
require_dependency File.expand_path('../hooks', __FILE__)

Redmine::Plugin.register :quick_view do
  name 'Quick View plugin'
  author 'Akira Saito'
  description 'This plugin provides ability to view a details of the issue at the issues page.'
  version '0.1.0'

  settings :default => {'issue_dialog_size'=>'640,600',
                        'issue_tooltip_enabled'=>'on',
                        'worktime_ext_dialog_anchor_enabled'=>'on',
                        'worktime_ext_tooltip_enabled'=>'on'}, 
           :partial => 'quick_view_issues/settings'
end
