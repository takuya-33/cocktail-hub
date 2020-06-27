require 'rails_helper'

RSpec.describe 'Login', type: :system, js: true do
  include ActiveJob::TestHelper
  let(:user) { FactoryBot.build(:user) }

  it 'ユーザーがログインできること' do
    valid_login(user)

    expect(current_path).to eq root_path
    expect(page).to_not have_content 'ログインしました'
  end

  it '無効な情報ではログインに失敗すること' do
    visit root_path

    find('.nav-icon').click
    find('.login').click

    perform_enqueued_jobs do
      expect do
        fill_in 'Email', with: ''
        fill_in 'Password', with: ''
        click_button 'ログインする'
      end.to change(User, :count).by(0)
    end
  end
end
