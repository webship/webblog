Feature: Web Blog content type
  As an admin user
  I want to create Web Blog content
  So that I can publish blog posts on the site

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: Admin can access the webblog add form
    When I navigate to "/node/add/webblog"
    Then I should see "Create Web Blog"
     And I should see a "Title" field
     And I should see the button "Save"

  Scenario: The webblog add form exposes the Body field
    When I navigate to "/node/add/webblog"
    Then I should see a "Title" field
     And I should see a "Body" field

  Scenario: Admin can create a webblog post with title only
    When I navigate to "/node/add/webblog"
     And I fill in "First Blog Post" for "Title"
     And I press "Save"
    Then I should see "has been created"
     And I should see "First Blog Post"
