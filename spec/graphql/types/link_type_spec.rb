# frozen_string_literal: true

RSpec.describe Types::LinkType do
  types = GraphQL::Define::TypeDefiner.instance

  it 'has an id field of ID type' do
    expect(subject).to have_field(:id).that_returns(!types.ID)
  end
  it 'has a url field of String type' do
    expect(subject).to have_field(:url).that_returns(!types.String)
  end

  it 'has a description field of String type' do
    expect(subject).to have_field(:descxription).that_returns(!types.String)
  end
end
