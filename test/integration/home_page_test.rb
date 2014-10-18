#Feature: Home page*
# As a visitor
# I want to visit a home page
# And see a welcome message
feature 'Home page' do
  
  
#Scenario: Visit the home page*
#  Given I am a visitor
#  When I visit the home page
#  Then I see "Stay in touch"
  scenario 'visit the home page' do
   visit root_path
   page.must_have_content 'Stay in touch'
  end
  
end