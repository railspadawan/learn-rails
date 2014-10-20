#*Feature: Contact page*
#As a visitor 
#I want to visit the contacts page
#And see a user input field for email
feature 'Contact page' do
  
#*Scenario: Visit the Contact page
#Given I am a visitor
#When i visit the contact page
#Then I see "Email" and a text field to input email 
  scenario 'visit the contact page' do
    visit new_contact_path
   page.must_have_content 'Email'
  end
  
end