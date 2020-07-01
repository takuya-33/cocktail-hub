require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'index' do
    it '正常にアクセスできること' do
      get root_path
      expect(response).to have_http_status(:success)
      expect(response).to have_http_status(200)
    end
  end

  describe 'show' do
    it '正常にアクセスできること' do
      pending
      get post_path(@post)
      expect(response).to have_http_status(:success)
      expect(response).to have_http_status(200)
    end
  end

  describe 'new' do
    it '正常にアクセスできること' do
      pending
      get new_post_path
      expect(response).to have_http_status(:success)
      expect(response).to have_http_status(200)
    end
  end

  describe 'edit' do
    it '正常にアクセスできること' do
      pending
      get edit_post_path(post)
      expect(response).to have_http_status(:success)
      expect(response).to have_http_status(200)
    end
  end
end
