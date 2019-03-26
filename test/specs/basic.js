const assert = require("assert");

describe("webdriver.io page", () => {
  it("should have the right title", () => {
    browser.startTracing();
    browser.url("https://webdriver.io");
    browser.endTracing();
    const title = browser.getTitle();
    assert.equal(
      title,
      "WebdriverIO · Next-gen WebDriver test framework for Node.js"
    );
    console.log(browser.getSpeedIndex());
  });
});
