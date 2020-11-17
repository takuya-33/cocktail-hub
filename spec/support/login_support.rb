module LoginSupport
  def valid_login(user)
    visit root_path
    find('.nav-icon-btn').click
    find('.login').click
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'ログインする'
  end
end

RSpec.configure do |config|
  config.include LoginSupport
end
