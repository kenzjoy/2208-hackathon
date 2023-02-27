require 'rails_helper'

RSpec.describe MemeService do 
  it 'gets a random meme' do

    response = MemeService.get_meme

    expect(response).to be_a(Hash)
    expect(response).to have_key(:count)
    expect(response[:count]).to eq(1)
    expect(response).to have_key(:memes)
    expect(response[:memes]).to be_a(Array)
    expect(response[:memes][0]).to have_key(:title)
    expect(response[:memes][0][:title]).to be_a(String)
    expect(response[:memes][0]).to have_key(:url)
    expect(response[:memes][0][:url]).to be_a(String)
  end
end