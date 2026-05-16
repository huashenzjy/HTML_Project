# SDET Technical English Companion
### Learn the words you need, when you need them.

> This document follows the same stage and week order as the main roadmap.
> Study each section during the matching week. Do not read ahead.
> Every word has: a simple definition, a code or work context, and an interview sentence.
> All explanations use B1+ English. Short sentences. No academic words.

---

## How to Use This Document

**Rule 1:** Open this document when you start a new week in the main roadmap.

**Rule 2:** Read the vocabulary for that week before you start coding.

**Rule 3:** At the end of each day, pick 3 words and write one sentence using each. Your own sentence.

**Rule 4:** In buffer weeks, review all vocabulary from the past 4 weeks without looking at the definitions.

**Rule 5:** Mark words you keep forgetting with ⭐. Review those first every day.

---

## Quick Pronunciation Guide for Key Words

These words are often mispronounced. Learn them correctly from the start.

| Word          | How to Say It       | Sounds Like           |
| ------------- | ------------------- | --------------------- |
| inheritance   | in-HER-it-ance      | "in her it ance"      |
| exception     | ex-SEP-shun         | "ex sep shun"         |
| interface     | IN-ter-face         | "in ter face"         |
| polymorphism  | pol-ee-MOR-fiz-um   | "poly more fizz um"   |
| encapsulation | en-kap-sue-LAY-shun | "en cap sue lay shun" |
| assertion     | a-SER-shun          | "a sir shun"          |
| repository    | re-POZ-it-or-ee     | "re poz it or ee"     |
| algorithm     | AL-go-rith-um       | "al go rith um"       |
| automation    | aw-toe-MAY-shun     | "aw toe may shun"     |
| framework     | FRAME-work          | "frame work"          |
| parameter     | pa-RAM-et-er        | "pa ram et er"        |
| dependency    | de-PEN-den-see      | "de pen den see"      |

---

## Stage 1 — Java Engineering Foundation

### Week 1: OOP Vocabulary

---

**class**
> A template or blueprint for creating objects.
> Think of it like a cookie cutter. The cutter is the class. The cookies are the objects.
>
> Code context: `public class Dog { }` — this creates a class called Dog.
>
> Interview sentence: *"I structured my project using multiple classes to separate responsibilities."*

---

**object**
> A real thing created from a class.
> If `Dog` is the class (blueprint), then `Dog myDog = new Dog()` creates an object.
>
> Code context: `Dog rex = new Dog("Rex");` — rex is an object.
>
> Interview sentence: *"Each test creates a new WebDriver object and closes it after the test."*

---

**constructor**
> A special method that runs when you create an object. It sets up the object.
> The name is always the same as the class name.
>
> Code context: `public Dog(String name) { this.name = name; }` — this is the constructor.
>
> Interview sentence: *"The BasePage constructor takes a WebDriver and stores it for all page methods to use."*

---

**inheritance**
> When one class gets all the methods and fields from another class.
> The child class gets everything the parent class has.
>
> Code context: `public class Dog extends Animal { }` — Dog inherits from Animal.
>
> Interview sentence: *"My LoginPage class extends BasePage to inherit the shared wait methods."*

---

**interface**
> A contract. It says "any class that uses me must have these methods."
> It does not write the method body. It only declares what methods must exist.
>
> Code context: `interface Shape { double area(); }` — all shapes must have `area()`.
>
> Interview sentence: *"I used the ITestListener interface to capture screenshots on test failure."*

---

**polymorphism**
> One name, many forms. The same method name works differently in different classes.
> Example: `sound()` in a Dog class says "woof". The same `sound()` in a Cat class says "meow".
>
> Code context: calling `animal.sound()` works for any animal, even if you do not know which one.
>
> Interview sentence: *"Polymorphism lets me call the same method on different page objects without knowing the exact page type."*

---

**encapsulation**
> Hiding the inside details of a class. Only showing what others need to use.
> You use `private` to hide fields. You use public methods to control access.
>
> Code context: `private String name;` with `public String getName() { return name; }`
>
> Interview sentence: *"I used encapsulation to hide the WebDriver instance inside BasePage, so test classes cannot access it directly."*

---

**access modifier**
> A keyword that controls who can see or use a field or method.
>
> | Word | Meaning |
> |---|---|
> | `public` | Anyone can use it |
> | `private` | Only this class can use it |
> | `protected` | This class and child classes can use it |
>
> Interview sentence: *"I made all page locators private so only the page class itself can use them."*

---

**override**
> When a child class rewrites a method from the parent class.
> You use `@Override` to tell Java you are doing this on purpose.
>
> Code context: `@Override public void sound() { System.out.println("woof"); }`
>
> Interview sentence: *"I override the onTestFailure method in my listener class to add screenshot capture."*

---

**instance**
> One specific object created from a class. Same meaning as "object" in most situations.
>
> Code context: `WebDriver driver = new ChromeDriver();` — driver is an instance of ChromeDriver.
>
> Interview sentence: *"Each parallel test thread gets its own WebDriver instance to avoid conflicts."*

---

### Week 2: Collections + Exceptions Vocabulary

---

**collection**
> A group of objects stored together. Like a container.
> In Java, the main ones are List, Map, and Set.
>
> Interview sentence: *"I used a HashMap collection to store test data loaded from a JSON file."*

---

**List**
> A collection that keeps items in order. You can have duplicates. You access items by index (position number).
> `ArrayList` is the most common List in Java.
>
> Code context: `List<String> names = new ArrayList<>();`
>
> Interview sentence: *"I stored test scenario names in a List and looped through them in a parameterized test."*

---

**Map**
> A collection of key-value pairs. Like a dictionary. You look up a value by its key.
> `HashMap` is the most common Map.
>
> Code context: `Map<String, Integer> grades = new HashMap<>();`
> `grades.put("Alice", 95);` — stores the pair.
> `grades.get("Alice");` — gets 95.
>
> Interview sentence: *"I used a HashMap to map test user names to their expected roles."*

---

**Set**
> A collection with no duplicates. Order is not guaranteed.
> Use it when you only care about whether something exists, not what position it is in.
>
> Code context: `Set<String> seen = new HashSet<>();`
>
> Interview sentence: *"I used a HashSet to track which test IDs had already run to avoid duplicates."*

---

**iterate / iteration**
> Going through a collection one item at a time.
>
> Code context: `for (String name : names) { System.out.println(name); }` — this iterates over the list.
>
> Interview sentence: *"I iterate through the test data list and create one test case for each row."*

---

**exception**
> An error that happens while the program is running. Not a compile error. A runtime problem.
> Java uses exceptions to handle unexpected situations.
>
> Common exceptions you will see:
> | Exception | What happened |
> |---|---|
> | `NullPointerException` | You tried to use something that is null (empty) |
> | `NoSuchElementException` | Selenium could not find the element on the page |
> | `StaleElementReferenceException` | The element existed before, but the page changed |
> | `TimeoutException` | Selenium waited too long and gave up |
>
> Interview sentence: *"I handle StaleElementReferenceException by re-finding the element inside a retry loop."*

---

**try-catch**
> A block of code that tries to run something, and catches the error if it fails.
>
> Code context:
> ```java
> try {
>     int result = divide(10, 0);
> } catch (DivisionByZeroException e) {
>     System.out.println("Cannot divide by zero");
> }
> ```
>
> Interview sentence: *"I wrap WebDriver actions in try-catch to handle unexpected exceptions without crashing the whole test suite."*

---

**throw / throws**
> `throw` = send an exception to the caller right now.
> `throws` = warn the caller that this method might send an exception.
>
> Code context:
> `throw new IllegalArgumentException("Name cannot be null");` — this stops the method and sends the error.
> `public void setName(String name) throws IllegalArgumentException { }` — this warns callers.
>
> Interview sentence: *"I throw an IllegalArgumentException when the config file is missing, so the test fails early with a clear message."*

---

### Week 3: Test Design Vocabulary

---

**test case**
> One specific situation you want to test. It has: an input, an action, and an expected result.
>
> Example: Input = "wrong password" → Action = click login → Expected = see error message.
>
> Interview sentence: *"I write test cases for normal, edge, and negative scenarios before writing any code."*

---

**normal case (happy path)**
> Testing the most common, expected way something is used.
> Input is valid. Everything works as planned.
>
> Example: User enters correct username and password → login succeeds.
>
> Interview sentence: *"The happy path tests confirm the main user flow works. But they are not enough on their own."*

---

**edge case (boundary case)**
> Testing the limits. What happens at the very minimum or maximum allowed value?
>
> Example: If a field allows 1–100 characters, test with exactly 1, exactly 100, and 101.
>
> Interview sentence: *"I always test edge cases like empty input, maximum length, and zero values."*

---

**negative case (negative test)**
> Testing what happens when the input is wrong, invalid, or unexpected.
> The goal is to confirm the system handles errors correctly.
>
> Example: Enter letters in a number-only field. Expect an error message, not a crash.
>
> Interview sentence: *"My negative test cases verify that the API returns 400 when required fields are missing."*

---

**assertion**
> A check in your test. It says "I expect this value to be X." If it is not X, the test fails.
>
> Code context: `assertEquals(200, response.statusCode());` — checks the status code is 200.
>
> Interview sentence: *"Every test I write has at least one assertion. A test without an assertion proves nothing."*

---

**coverage**
> How much of the code or functionality your tests check.
> High coverage means more scenarios are tested.
>
> Interview sentence: *"I aim to cover normal, edge, and negative cases for every feature I test."*

---

**debugging**
> Finding and fixing problems in code.
> A bug is a problem. Debugging is the process of finding where it is and why it happens.
>
> Interview sentence: *"When a test fails, I debug by reading the error message first, then checking the most recent code change."*

---

### Week 5: Maven + Git Vocabulary

---

**Maven**
> A tool that manages your Java project. It handles three things:
> 1. Project structure (where files go)
> 2. Dependencies (which libraries to download)
> 3. Build commands (compile, test, package)
>
> Interview sentence: *"I use Maven to manage all project dependencies and run tests from the command line with `mvn test`."*

---

**dependency**
> A library or tool your project needs to work. You declare it in `pom.xml` and Maven downloads it.
>
> Code context: Adding Selenium to `pom.xml` makes Selenium available in your code.
>
> Interview sentence: *"I manage all test framework dependencies through Maven's pom.xml file."*

---

**pom.xml**
> A configuration file that tells Maven everything about your project: name, version, dependencies, and build settings.
> POM stands for Project Object Model.
>
> Interview sentence: *"I configure the project's dependencies, plugins, and test runner settings in pom.xml."*

---

**repository (repo)**
> Two meanings in SDET work:
> 1. **GitHub repository**: A place to store your project code online.
> 2. **Maven repository**: An online storage of Java libraries.
>
> Interview sentence: *"My automation framework is available in a public GitHub repository with documentation."*

---

**commit**
> Saving a snapshot of your code changes to Git history.
> Each commit has a message that explains what changed.
>
> Code context: `git commit -m "feat: add LoginPage POM class"` — saves the change with a description.
>
> Interview sentence: *"I commit after every meaningful change, not just at the end of the day."*

---

**branch**
> A separate line of development in Git. You create a branch to work on a feature without changing the main code.
>
> Code context: `git checkout -b feature/login-page` — creates and switches to a new branch.
>
> Interview sentence: *"I use feature branches for every new feature and merge them back to main via a pull request."*

---

**merge**
> Combining changes from one branch into another.
>
> Interview sentence: *"After code review, I merge the feature branch into the main branch."*

---

**pull request (PR)**
> A request to merge your branch into another branch. On GitHub, it is also a place for code review.
>
> Interview sentence: *"I create pull requests for every feature so the team can review the changes before merging."*

---

**merge conflict**
> When two people change the same line of code. Git cannot decide which change to keep, so it asks you to decide.
>
> Interview sentence: *"I resolve merge conflicts by reading both versions, understanding the intent, and keeping the correct code."*

---

### Week 6: JUnit 5 / Testing Framework Vocabulary

---

**unit test**
> A test that checks one small piece of code in isolation. Usually one method at a time.
>
> Interview sentence: *"I write unit tests for every public method, covering at least three scenarios each."*

---

**test suite**
> A group of tests that run together.
>
> Interview sentence: *"I organize tests into smoke and regression suites using Testing configuration."*

---

**annotation**
> A label in Java code that starts with `@`. It gives special instructions to the Java compiler or the test framework.
>
> | Annotation | Meaning |
> |---|---|
> | `@Test` | This method is a test |
> | `@BeforeEach` | Run this before every test |
> | `@AfterEach` | Run this after every test |
> | `@BeforeAll` | Run this once before all tests in the class |
> | `@AfterAll` | Run this once after all tests in the class |
>
> Interview sentence: *"I use @BeforeEach to set up fresh test data before every test method."*

---

**parameterized test**
> One test method that runs multiple times with different input data.
> You write the test once. The data changes each run.
>
> Code context: `@ParameterizedTest` with `@CsvSource({"1,1,2", "2,3,5"})` runs the test twice.
>
> Interview sentence: *"I use parameterized tests to run the same login test with 5 different user credentials."*

---

**TDD (Test-Driven Development)**
> Writing the test BEFORE writing the code it tests.
> The process: write a failing test → write code to make it pass → clean up the code.
>
> Interview sentence: *"I practiced TDD in my Library project — I wrote the tests first, then built the implementation."*

---

## Stage 2 — API Basics + UI Automation

### Week 7: HTTP + API Vocabulary

---

**API (Application Programming Interface)**
> A way for two programs to talk to each other. You send a request. The API sends back a response.
> In web testing, API usually means a REST API that sends and receives JSON data.
>
> Interview sentence: *"I automated API tests using RestAssured to verify the backend independently of the UI."*

---

**REST**
> A style for designing APIs. Most modern web APIs follow REST rules.
> REST stands for Representational State Transfer. You do not need to memorize the full name.
>
> Interview sentence: *"The API I tested follows REST conventions — resources are accessed by URL and actions are determined by the HTTP method."*

---

**HTTP (HyperText Transfer Protocol)**
> The rules for how data travels between a browser or program and a server.
> Every API request uses HTTP.
>
> Interview sentence: *"I understand HTTP methods and status codes, which I apply in both Postman and RestAssured."*

---

**HTTP method**
> The action you want to perform. The most important ones:
>
> | Method | Action | Example |
> |---|---|---|
> | GET | Read / retrieve data | Get a list of users |
> | POST | Create new data | Create a new user |
> | PUT | Replace existing data completely | Replace all user fields |
> | PATCH | Update part of existing data | Change only the email |
> | DELETE | Remove data | Delete a user |
>
> Interview sentence: *"I test all five HTTP methods and verify the correct status code for each."*

---

**HTTP status code**
> A number the server sends back to tell you what happened.
>
> | Code | Meaning | Simple explanation |
> |---|---|---|
> | 200 | OK | Request worked. Here is the data. |
> | 201 | Created | New thing was created successfully. |
> | 204 | No Content | It worked, but there is nothing to return. |
> | 400 | Bad Request | Your request has a problem. |
> | 401 | Unauthorized | You need to log in first. |
> | 403 | Forbidden | You are logged in but not allowed. |
> | 404 | Not Found | The thing you asked for does not exist. |
> | 422 | Unprocessable Entity | Format is right but the data is invalid. |
> | 500 | Internal Server Error | The server broke. Not your fault. |
>
> Interview sentence: *"I write assertions for both the status code and the response body. Status code tells me what happened. The body tells me what the data looks like."*

---

**endpoint**
> The URL address of one specific action in an API.
>
> Example: `GET /users/1` is an endpoint that gets user with ID 1.
> `POST /users` is a different endpoint that creates a new user.
>
> Interview sentence: *"I created test methods for each endpoint in the API, covering both success and failure scenarios."*

---

**request**
> What you send to the API. It includes: the URL, the HTTP method, headers, and sometimes a body.
>
> Interview sentence: *"My RestAssured tests build the request using given() and send it using when()."*

---

**response**
> What the API sends back. It includes: a status code and usually a body with data.
>
> Interview sentence: *"I assert on the response status code and parse the JSON body to verify specific fields."*

---

**request body**
> The data you send with POST, PUT, or PATCH requests. Usually in JSON format.
>
> Interview sentence: *"I serialize Java POJOs to JSON for the request body using the Jackson library."*

---

**header**
> Extra information sent with a request or response. Like metadata.
> The most important header for API testing: `Content-Type: application/json`
> This tells the server: "the body I am sending is in JSON format."
>
> Interview sentence: *"A missing Content-Type header is one of the first things I check when a POST request returns 400."*

---

**JSON (JavaScript Object Notation)**
> A format for storing and sending data. It uses key-value pairs.
> It looks like this:
> ```json
> {
>   "name": "Alice",
>   "age": 30,
>   "active": true
> }
> ```
>
> Interview sentence: *"I validate JSON response fields using JsonPath in RestAssured and Jackson for deserialization."*

---

**authentication**
> Proving who you are. Usually done with a username/password or a token.
>
> Interview sentence: *"I test both authenticated and unauthenticated requests to verify the API correctly returns 401 when credentials are missing."*

---

**authorization**
> Checking what you are allowed to do after you have proven who you are.
> Authentication = Who are you? Authorization = What can you do?
>
> Interview sentence: *"A 401 error means authentication failed. A 403 error means authorization failed. They have different causes and different fixes."*

---

### Week 8–10: Selenium + POM Vocabulary

---

**Selenium**
> A Java library (and other languages) that controls a web browser automatically.
> You write code, and Selenium makes the browser click, type, and navigate.
>
> Interview sentence: *"I use Selenium WebDriver to automate browser interactions for end-to-end UI testing."*

---

**WebDriver**
> The main class in Selenium that controls the browser.
> `ChromeDriver` is for Chrome. `FirefoxDriver` is for Firefox.
>
> Code context: `WebDriver driver = new ChromeDriver();`
>
> Interview sentence: *"I initialize the WebDriver in a factory class and pass it to page objects through the constructor."*

---

**locator**
> A way to find an element on a web page. Like an address for a button or input field.
>
> | Locator type | Looks like | Use when |
> |---|---|---|
> | ID | `By.id("username")` | Element has a unique id. First choice. |
> | CSS Selector | `By.cssSelector(".login-btn")` | ID not available. Usually faster than XPath. |
> | XPath | `By.xpath("//button[@type='submit']")` | Need to navigate up the DOM or use `contains()`. |
> | Name | `By.name("email")` | Form fields with a name attribute. |
>
> Interview sentence: *"I prefer CSS selectors for most cases because they are faster and more readable. I use XPath only when I need to navigate the DOM tree or use contains()."*

---

**element**
> Any item on a web page: a button, input field, link, heading, image, etc.
> In Selenium, you find elements to interact with them.
>
> Code context: `WebElement loginButton = driver.findElement(By.id("login-btn"));`
>
> Interview sentence: *"I store locators as WebElement fields in the page class and interact with them through methods."*

---

**explicit wait**
> Telling Selenium to wait until a specific condition is true, up to a maximum time.
> Better than implicit wait because it waits for a specific thing.
>
> Code context:
> ```java
> WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(10));
> wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("result")));
> ```
>
> Interview sentence: *"I always use explicit waits with ExpectedConditions instead of implicit waits or Thread.sleep."*

---

**implicit wait**
> Telling Selenium to wait up to X seconds before throwing an error when it cannot find an element.
> Applied globally to all `findElement()` calls.
>
> Why not to use it: it interacts badly with explicit wait. It can make tests slow and unpredictable.
>
> Interview sentence: *"I do not use implicit wait in my framework because it conflicts with explicit wait and makes test behavior hard to predict."*

---

**Thread.sleep**
> A Java method that pauses the program for a fixed number of milliseconds.
> This is a bad practice in test automation because it always waits the full time, even if the element is ready sooner.
>
> Code context: `Thread.sleep(3000);` — pauses for 3 seconds no matter what.
>
> Interview sentence: *"I replaced all Thread.sleep calls with explicit waits early in the project. Fixed-time sleeps make tests slower and more fragile."*

---

**Page Object Model (POM)**
> A design pattern for Selenium test code.
> Each web page gets its own Java class. That class stores locators and page actions.
> Test classes call methods from page classes. Test classes never have locators.
>
> Why it matters: when the page changes, you update one file, not every test.
>
> Interview sentence: *"I use POM to separate page structure from test logic. When a UI element changes, I update only the page class."*

---

**BasePage**
> A parent class that all page classes extend. It holds shared code like WebDriverWait setup.
>
> Code context:
> ```java
> public class BasePage {
>     protected WebDriver driver;
>     protected WebDriverWait wait;
>     public BasePage(WebDriver driver) {
>         this.driver = driver;
>         this.wait = new WebDriverWait(driver, Duration.ofSeconds(10));
>     }
> }
> ```
>
> Interview sentence: *"All my page classes extend BasePage to reuse the WebDriver and wait configuration."*

---

**StaleElementReferenceException**
> An error in Selenium. It happens when you found an element, but then the page changed or refreshed. The element reference is now outdated.
>
> How to fix: find the element again just before you use it.
>
> Interview sentence: *"I handle StaleElementReferenceException by re-finding the element inside the action instead of storing it as a variable."*

---

**parallel execution**
> Running multiple tests at the same time instead of one by one.
> This makes the test suite finish faster.
>
> Problem: if all threads share one WebDriver, tests crash into each other.
> Solution: use `ThreadLocal<WebDriver>` — each thread gets its own WebDriver.
>
> Interview sentence: *"I configured Testing for parallel execution with thread-count 3 and used ThreadLocal to give each thread its own isolated WebDriver instance."*

---

**ThreadLocal**
> A Java class that stores one separate value per thread.
> Used in parallel testing to give each thread its own WebDriver.
>
> Code context: `ThreadLocal<WebDriver> driverThread = new ThreadLocal<>();`
>
> Interview sentence: *"WebDriverFactory uses ThreadLocal so that parallel tests do not interfere with each other."*

---

**test report**
> A file (usually HTML) that shows which tests passed, which failed, and why.
> ExtentReports is a popular library for generating HTML reports in Java test frameworks.
>
> Interview sentence: *"My framework generates an HTML report after every run. Failed tests include a screenshot and the error message."*

---

### Week 11–13: Testing + RestAssured Vocabulary

---

**Testing**
> A testing framework for Java. Similar to JUnit but with more features for test suites, grouping, and parallel execution.
> Testing stands for Test Next Generation.
>
> | Feature | Testing | JUnit 5 |
> |---|---|---|
> | Test grouping | `groups = {"smoke"}` | Tags |
> | Parallel execution | Built-in | Needs config |
> | Suite config | `testng.xml` | JUnit Platform |
> | Most used at companies | Enterprise teams | Open-source projects |
>
> Interview sentence: *"I chose Testing because its testing.xml configuration makes it easy to run specific test groups and configure parallel execution."*

---

**test suite**
> A named group of tests that run together. In Testing, configured in `testng.xml`.
>
> Interview sentence: *"I have a smoke suite that runs in 2 minutes and a full regression suite that runs in 15 minutes. CI runs the smoke suite on every push."*

---

**smoke test**
> A fast, basic test that checks the most important functions work.
> The name comes from hardware testing: if you turn on a device and smoke comes out, you stop. No need for further testing.
>
> Interview sentence: *"I tag critical tests as smoke tests. They run first and fail fast if something major is broken."*

---

**regression test**
> Testing that existing features still work after new changes.
> Goal: make sure new code did not break old code.
>
> Interview sentence: *"Regression tests cover the full application and run on every pull request to catch any unintended changes."*

---

**RestAssured**
> A Java library for writing API tests. It makes writing HTTP requests and assertions clean and readable.
>
> Code context:
> ```java
> given()
>     .header("Content-Type", "application/json")
>     .body(requestBody)
> .when()
>     .post("/users")
> .then()
>     .statusCode(201)
>     .body("name", equalTo("Alice"));
> ```
>
> Interview sentence: *"I use RestAssured's given-when-then structure to write clear, readable API tests."*

---

**JsonPath**
> A way to navigate and extract data from a JSON response. Like XPath but for JSON.
>
> Code context: `response.jsonPath().getString("user.email")` — gets the email field from a nested JSON object.
>
> Interview sentence: *"I use JsonPath to extract specific fields from the response and assert they match the expected values."*

---

**POJO (Plain Old Java Object)**
> A simple Java class with fields, getters, and setters. Used to represent data.
> In API testing: you create POJOs to represent request bodies and response bodies.
>
> Code context:
> ```java
> public class User {
>     private String name;
>     private String email;
>     // getters and setters
> }
> ```
>
> Interview sentence: *"I use POJO classes with Jackson to serialize request bodies and deserialize response bodies, which keeps test code clean and type-safe."*

---

**serialization**
> Converting a Java object into JSON (or another format) to send it over the network.
> Opposite is deserialization: converting JSON back into a Java object.
>
> Code context: Jackson library does this automatically when you use `ObjectMapper`.
>
> Interview sentence: *"I use Jackson for serialization and deserialization so I work with Java objects in my tests, not raw JSON strings."*

---

**data-driven testing**
> Running the same test multiple times with different input data.
> Data comes from an external file (CSV, JSON, Excel), not hardcoded in the test.
>
> Interview sentence: *"My API tests are data-driven: test data lives in JSON files. Changing test data never requires changing test code."*

---

## Stage 3 — Integration + Portfolio + Interview Prep

### Week 16: BDD + CI/CD Vocabulary

---

**BDD (Behavior-Driven Development)**
> A way of writing tests that uses business-readable language instead of pure code.
> The goal: non-technical people (product managers, business analysts) can read and understand the tests.
>
> Interview sentence: *"I used BDD with Cucumber to write test scenarios in Gherkin, making them readable for the whole team, not just engineers."*

---

**Gherkin**
> The language used to write BDD test scenarios. Uses keywords: Given, When, Then, And, But.
>
> Example:
> ```gherkin
> Feature: User Login
>   Scenario: Valid user logs in successfully
>     Given the user is on the login page
>     When they enter valid credentials
>     Then they should see the dashboard
> ```
>
> Interview sentence: *"I write feature files in Gherkin syntax that describe what the system should do, not how it does it."*

---

**feature file**
> A text file ending in `.feature` that contains Gherkin scenarios.
> It describes one feature from a business point of view.
>
> Interview sentence: *"Each feature file in my project covers one user story, with multiple scenarios for happy path and edge cases."*

---

**step definition**
> Java code that links a Gherkin step (like "When they click login") to actual Selenium or API code.
>
> Code context:
> ```java
> @When("they enter valid credentials")
> public void enterValidCredentials() {
>     loginPage.enterUsername("user@example.com");
>     loginPage.enterPassword("password123");
> }
> ```
>
> Interview sentence: *"Step definitions connect the business-readable Gherkin steps to the actual Page Object methods."*

---

**Cucumber**
> A Java library that runs BDD tests written in Gherkin.
> It connects feature files to step definitions.
>
> Interview sentence: *"I used Cucumber as the BDD framework, connecting Gherkin feature files to Java step definitions that call my Page Object methods."*

---

**CI/CD (Continuous Integration / Continuous Delivery)**
> CI: Every time a developer pushes code, an automated system builds and tests the code immediately.
> CD: After CI passes, the code is automatically prepared for deployment.
>
> For SDET purposes, CI is what matters: your tests run automatically on every push.
>
> Interview sentence: *"I configured GitHub Actions CI so that every push to the main branch triggers the full test suite automatically."*

---

**pipeline**
> A set of automated steps that run in order. In CI/CD, a pipeline typically: checks out code → builds it → runs tests → reports results.
>
> Interview sentence: *"The CI pipeline runs on every push, builds the project, runs the test suite, and uploads the HTML report as an artifact."*

---

**GitHub Actions**
> A CI/CD tool built into GitHub. You write a YAML file that describes what to do when code is pushed.
>
> Code context (the `.github/workflows/ci.yml` file):
> ```yaml
> on: [push]
> jobs:
>   test:
>     runs-on: ubuntu-latest
>     steps:
>       - uses: actions/checkout@v3
>       - run: mvn test
> ```
>
> Interview sentence: *"I configured GitHub Actions to run mvn test on every push. The CI status badge on the README shows the current build status."*

---

**artifact (in CI/CD)**
> A file produced by a CI run that you can download. In test automation, this is usually the HTML test report.
>
> Interview sentence: *"I configured the pipeline to upload the ExtentReports HTML file as an artifact so anyone can download it from the Actions run page."*

---

**headless (mode)**
> Running a browser without showing the browser window. Needed in CI because CI servers have no screen.
>
> Interview sentence: *"I run tests in headless Chrome mode in CI because the GitHub Actions server has no display."*

---

### Week 19–20: Interview + Career Vocabulary

---

**portfolio**
> A collection of projects you show to employers to prove your skills.
> For SDET roles: GitHub repositories with real automation projects.
>
> Interview sentence: *"My portfolio includes three automation projects: a Java OOP project with unit tests, a Selenium UI framework, and a RestAssured API framework."*

---

**framework (in automation)**
> A structured collection of code, configuration, and conventions that makes writing tests easier.
> Not one class. The whole project structure.
>
> Interview sentence: *"I designed the framework with separate layers for page objects, test logic, utilities, and configuration — following standard automation architecture."*

---

**architecture**
> The overall design of a software system. How the parts are organized and how they connect.
>
> Interview sentence: *"The framework architecture separates page objects, step definitions, API clients, and test data into distinct packages with clear responsibilities."*

---

**maintainability**
> How easy it is to change or update code. Good code is easy to maintain.
> POM improves maintainability because you only update one place when a page changes.
>
> Interview sentence: *"I prioritized maintainability by using POM and external config files, so changes to URLs or browser settings do not require modifying test code."*

---

**scalability**
> How well something works as it grows. A scalable framework can add 100 more tests without breaking.
>
> Interview sentence: *"The framework is scalable: adding new page objects or API endpoints does not require changes to existing tests."*

---

**defect / bug**
> A problem in the software. Something that does not work as expected.
> Testers find defects. Developers fix them.
>
> Interview sentence: *"My automation suite caught a defect in the checkout flow where the total price was calculated incorrectly for discount codes."*

---

**root cause**
> The real, underlying reason something failed. Not the symptom. The actual cause.
>
> Interview sentence: *"When a test fails, I do not just re-run it. I find the root cause: is it a test bug, an environment issue, or a real application defect?"*

---

**flaky test**
> A test that sometimes passes and sometimes fails without any code change.
> This is a serious problem because it makes test results unreliable.
>
> Common causes: `Thread.sleep`, hardcoded timing, shared state between tests, unstable test environments.
>
> Interview sentence: *"I eliminated flaky tests in my framework by replacing all fixed waits with explicit waits and ensuring each test uses isolated test data."*

---

**end-to-end test (E2E)**
> A test that covers the full user flow from start to finish.
> Example: open the website → log in → add to cart → checkout → verify order confirmation.
>
> Interview sentence: *"My E2E tests simulate real user journeys and verify that all parts of the system work together correctly."*

---

**regression**
> When a feature that worked before stops working after new code is added.
> Regression testing finds these problems.
>
> Interview sentence: *"Running the regression suite on every pull request ensures new changes do not break existing functionality."*

---

**sprint**
> A short period of work in Agile development, usually 2 weeks. The team plans, builds, and tests in one sprint.
>
> Interview sentence: *"I organize my test tasks by sprint, writing automation for new features during the same sprint they are developed."*

---

**SDET (Software Development Engineer in Test)**
> An engineer who writes code to test software. Stronger coding skills than a manual QA tester.
> You are expected to build automation frameworks, not just run existing tests.
>
> Interview sentence: *"As an SDET, I focus on building sustainable automation infrastructure, not just executing manual test cases."*

---

## Interview Sentence Templates

Use these as starting points. Change the details to match your own projects.

**Describing your project:**
> "I built a [UI/API] automation framework using [Selenium/RestAssured] and Java. It uses [POM/POJO design] and runs in [CI/CD via GitHub Actions]. It covers [12+] test scenarios including [login/CRUD operations/negative cases]."

**Explaining a technical decision:**
> "I chose [Testing over JUnit] because [it supports test grouping and parallel execution natively]. The tradeoff is [slightly more configuration], but for this project [the benefit was worth it]."

**Describing how you handle a problem:**
> "When [StaleElementReferenceException] occurs, I [re-find the element inside the action instead of storing it as a variable]. This works because [the element reference becomes invalid when the page updates]."

**Describing your test design:**
> "For every feature I test, I write three types of cases: normal cases [to verify expected behavior], edge cases [to test boundary values], and negative cases [to verify correct error handling]."

**Describing debugging:**
> "When a test fails, I first read the error message carefully. Then I check [the most recent code change / the wait conditions / the locator]. I find the root cause before making any fix."

---

## Quick Reference: Most Common Technical Words in SDET Interviews

| Word | One-line definition |
|---|---|
| framework | A structured code project for writing tests |
| assertion | A check in your test that verifies an expected result |
| locator | How you find an element on a web page in Selenium |
| POM | Pattern that puts each page's code in its own class |
| dependency | A library your project needs, managed by Maven |
| endpoint | One specific URL and action in an API |
| serialization | Converting a Java object to JSON |
| parallel | Running multiple tests at the same time |
| flaky test | A test that randomly passes or fails |
| regression | When new code breaks old features |
| CI/CD | System that runs tests automatically on code push |
| headless | Browser runs without a visible window |
| coverage | How much of the code or features your tests check |
| defect / bug | A problem in the software |
| root cause | The real reason something broke |

---

*Version 1.0 | Companion to: SDET Zero to Offer v4 Roadmap*
*Study this alongside the main roadmap, one section per week.*
