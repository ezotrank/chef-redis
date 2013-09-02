case node['redis']['supervisor']
when 'monit'
  include_recipe 'monit'
  monitrc 'monit_redis' do
    template_cookbook 'redis'
  end
end