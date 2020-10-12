require 'rails_helper'

RSpec.describe 'Routing', type: :routing do
  it { should route(:get, '/logged_in').to('sessions#logged_in') }
  it { should route(:post, '/login').to('sessions#create') }
  it { should route(:delete, '/logout').to('sessions#destroy') }

  it { should route(:post, '/registrations').to('registrations#create') }  
  
  it { should route(:get, '/types').to('types#index') }
  it { should route(:get, '/types/1').to('types#show', id: 1) }

  it { should route(:get, '/apartments').to('apartments#index') }
  it { should route(:get, '/apartments/1').to('apartments#show', id: 1) }
  
  it { should route(:get, '/appointments').to('appointments#index') }
  it { should route(:post, '/appointments').to('appointments#create') }
  it { should route(:delete, '/appointments/1').to('appointments#destroy', id: 1) }
end
