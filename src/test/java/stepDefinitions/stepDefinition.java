package stepDefinitions;

import cucumber.api.java.en.*;

public class stepDefinition {

    @Given("^User is on landing page$")
    public void user_is_on_landing_page() {
        System.out.println("01-This is user_is_on_landing_page method executed");
    }

    @When("^User login into application with \"([^\"]*)\" and \"([^\"]*)\"$")
    public void user_login_into_application_with_and(String arg1, String arg2) {
        if(arg1.equals("test_user")){
            System.out.println("02a-good_user_login_into_application_with_and user: " + arg1 + "| password: " + arg2);
        } else if (arg1.equals("bad_user")) {
            System.out.println("02b-bad_user_login_into_application_with_and user: " + arg1 + "| password: " + arg2);
        } else {
            System.out.println("02c-no_user_info_was_passed_in");
        }
    }

    @Then("^Home page is populated$")
    public void home_page_is_populated() {
        System.out.println("03-This is home_page_is_populated method executed");
    }

    @And("^Cards are displayed$")
    public void cards_are_displayed() {
        System.out.println("04a-This is cards_are_displayed method executed");
    }

    @Then("^Cards are not displayed$")
    public void cards_are_not_displayed() {
        System.out.println("04b-This is cards_are_not_displayed method executed");
    }


}
