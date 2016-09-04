Rails.application.routes.draw do
  scope(:path => '/api') do
      get 'battles' => 'application#battles'
      get 'count' => 'application#count'
      get 'list' => 'application#list'
      get 'stat' => 'application#stat'
      get 'search' => 'application#search'
  end
end
