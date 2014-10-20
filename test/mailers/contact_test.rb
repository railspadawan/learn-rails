require 'test_helper'

describe Contact do
  
  let(:contact_params) {{name: 'Jimmy Page', email: 'JimyPage@HHGG.com', content: 'Hello there!'}}
  let(:contact) {Contact.new contact_params}
  
  it 'is valid when created with valid parameters' do
    contact.must_be :valid?
  end
  
  it 'is invalid without name, email and content' do
    # Delete name before contact is called
    contact_params.delete :name
    contact.wont_be :valid?
    contact.errors[:name].must_be :present?
  end
end