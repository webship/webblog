Feature: Web Blog in the content admin listing
  As an admin user
  I want web blog posts to appear in /admin/content
  So that I can manage them

  Background:
    Given I am a logged in user with the "Webmaster" user

  Scenario: A new webblog appears in the admin content listing
    When I navigate to "/node/add/webblog"
     And I fill in "Listing Test Post" for "Title"
     And I press "Save"
    Then I should see "has been created"
    When I navigate to "/admin/content"
    Then I should see "Listing Test Post"
     And I should see "Web Blog"
