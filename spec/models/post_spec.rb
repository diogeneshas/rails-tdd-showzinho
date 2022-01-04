require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'Validar titulo do post' do
    it 'ele seja valido' do
      post = Post.new(title: 'First Post', content: 'Conteudo')
      expect(post).to be_valid
    end

    it 'ele nao seja valido' do
      post = Post.new(content: 'conteudo')
      expect(post).to_not be_valid
    end

    it 'e retorna nao pode ser em branco' do
      post = Post.new(title: nil)
      post.valid?
      expect(post.errors[:title]).to include("can't be blank")
    end
  end

  context 'Validar conteudo do post' do
    it 'ele seja valido' do
      post = Post.new(title: 'Second Post', content: 'Conteudo')
    end

    it 'ele nao seja valido' do
      post = Post.new(title: 'Titulo')
      expect(post).to_not be_valid
    end
  end
end
