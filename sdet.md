# SDET Zero to Offer: 5-Month Hardcore Learning Roadmap (v4)

> Strict. Executable. Job-focused. Built for 2–3 hours per day.
> No vague steps. No empty motivation. No classroom exercises.

---

## 1. Learning Diagnosis

### Your Starting Point

| Area | State | Risk | Fix When |
|---|---|---|---|
| Java syntax | Basic | 🔴 High | Week 1–6 |
| Java OOP / Collections / Exceptions | Weak | 🔴 High | Week 1–5 |
| Testing concepts | Zero | 🔴 High | Week 3 onward |
| Automation experience | Zero | 🔴 High | Week 7 onward |
| Maven / Git | Zero | 🟡 Medium | Week 3 |
| API concepts | Zero | 🟡 Medium | Week 7 |
| English (technical) | B1+–B2 | 🟡 Medium | Ongoing |
| Study time | 2–3 hrs/day | 🟡 Medium | Manageable if focused |

### Topic Priority

| Topic | Priority | Why |
|---|---|---|
| Java OOP, Collections, Exceptions | Must-have | Every framework needs this |
| JUnit 5, Maven, Git | Must-have | Used in every SDET job |
| Selenium + POM | Must-have | Most-asked interview skill |
| RestAssured + REST basics | Must-have | High market value |
| Testing | Important | Used at most companies |
| GitHub Actions CI/CD | Important | Shows real workflow understanding |
| SQL basics | Important | Needed for data verification |
| Postman | Important | Fast API learning tool |
| Linux basics | Important | Needed for CI and log reading |
| Cucumber / BDD | Important but compressed | Compress to 1 week |
| Mockito | Optional | Low impact for junior roles |
| Jenkins | Skip | Replace with GitHub Actions |
| Advanced SQL | Skip | Junior level is enough |
| Heavy LeetCode | Skip | 10–15 Easy problems only |

### Key Weaknesses and What They Mean

**Weak OOP:** You cannot build POM without it. Fix this before touching Selenium.

**Zero testing experience:** You need to learn testing thinking, not just testing tools. Week 3 introduces test design as a mindset.

**Zero API knowledge:** API testing is increasingly important in 2025+ SDET roles. You will learn it early (Postman in Week 7) before RestAssured coding.

**B1+/B2 English:** Good enough to work with. You need to practice technical explanations out loud starting from Week 10, not Week 20.

---

## 2. Overall Strategy

### The System

This plan uses three rules:

**Rule 1 — Foundation before frameworks.**
Six weeks of solid Java before any Selenium or RestAssured. If your Java breaks, your tests break.

**Rule 2 — Early project feedback, not just late delivery.**
Small runnable outputs every week. A full portfolio project at the end of each stage. You do not wait 20 weeks to see if your code works.

**Rule 3 — Buffer weeks every 4 weeks.**
Week 4, Week 9, Week 14, Week 19 are buffer weeks. No new topics. Use them for catch-up, review, debugging, or rest. Real life happens. Buffer weeks prevent the plan from collapsing when it does.

### Why This Learning Order

```
Week 1–3   Java OOP + Collections + Exceptions
Week 4     BUFFER
Week 5–6   Maven + Git + JUnit 5
Week 7     API basics: Postman only
Week 8–11  UI automation: Selenium + POM + TestNG
Week 9     BUFFER (inside UI stage)
Week 12–13 API automation: RestAssured
Week 14    BUFFER
Week 15–16 BDD/Cucumber + CI/CD + GitHub Actions
Week 17–18 Capstone project build
Week 19    BUFFER
Week 20    Interview sprint + final applications
```

This is not a theory course. Every week has a runnable output. Every stage ends with a real project.

---

## 3. Stage Overview

### Stage 1 — Java Engineering Foundation (Week 1–6, includes 1 buffer)

| Item | Detail |
|---|---|
| **Goal** | Write clean Java with OOP, collections, and exception handling. Use Maven and Git. Write unit tests with JUnit 5. |
| **Why first** | Every framework in this roadmap is a Java library. If your Java is weak, everything built on it will fail. |
| **Common mistakes** | Reading code instead of writing it. Skipping exception handling. Not committing to Git daily. Thinking you "understand" OOP without being able to build a class from scratch. |
| **End skill level** | You can build a small Java project, write unit tests for it, manage it with Maven, and push to GitHub using branch + PR workflow. |

---

### Stage 2 — API Basics + UI Automation (Week 7–13, includes 2 buffers)

| Item | Detail |
|---|---|
| **Goal** | Understand REST and HTTP using Postman. Build a full Selenium + POM UI automation framework. Learn RestAssured. |
| **Why this order** | Postman first gives you API intuition before writing code. Selenium after solid Java means you build it correctly. RestAssured after Selenium means you already know how to structure tests. |
| **Common mistakes** | Using Thread.sleep. Not using POM. Writing all locators in the test class. Testing only happy path. Skipping negative test cases. |
| **End skill level** | You have two working frameworks on GitHub: one UI automation project, one API automation project. Both have reports and professional READMEs. |

---

### Stage 3 — Integration + Portfolio + Interview Prep (Week 14–20, includes 1 buffer)

| Item | Detail |
|---|---|
| **Goal** | Build the capstone project. Configure CI/CD. Polish GitHub. Finalize resume. Do mock interviews. Apply for jobs. |
| **Why last** | You cannot polish what does not exist. You need the three core projects done before packaging them for employers. |
| **Common mistakes** | Waiting until week 20 to apply. Not practicing English explanations out loud. Resume with skills but no project links. Capstone project with no README. |
| **End skill level** | Three polished GitHub projects, a complete resume, practiced project explanations in English, at least two mock interviews done, applications sent. |

---

## 4. Week-by-Week Plan

---

### Week 1 — Java OOP: Classes, Inheritance, Interfaces

**Weekly Goal:** Write OOP code from scratch without notes.

**Core Topics:** Class, object, constructor, `this`, inheritance (`extends`), `@Override`, interface (`implements`), access modifiers

**Task List:**

| #   | Task                                                                                   | How to Do It                                          | Done When                                              |
| --- | -------------------------------------------------------------------------------------- | ----------------------------------------------------- | ------------------------------------------------------ |
| 1   | Install IntelliJ IDEA + JDK 17                                                         | Download from official sites. Create a Maven project. | `Hello World` runs without errors.                     |
| 2   | Write `Animal` parent class + `Dog` and `Cat` children                                 | Parent has `eat()`. Each child has `sound()`. Run it. | You demonstrate polymorphism without looking at notes. |
| 3   | Write `Shape` interface + `Circle` and `Rectangle`                                     | Interface has `area()`. Both implement it correctly.  | Both return correct values.                            |
| 4   | Create GitHub repo `java-practice`. First push.                                        | `git init → add → commit → push`                      | Repo visible on GitHub with a real commit message.     |
| 5   | Obsidian: "What is OOP? What is inheritance? What is an interface?" in your own words. | No copy-paste. Write from understanding.              | You can say each explanation out loud without reading. |

**Common Mistakes:**
- Forgot `@Override`: code may still run but logic is silently wrong. Always add it.
- Git push rejected: run `git pull --rebase` first.
- Interface method not implemented: Java gives a compile error. Read the error. It tells you exactly what is missing.

**End of Week:** You can write a class hierarchy with inheritance and interfaces, explain why each exists, and push to GitHub.

---

### Week 2 — Collections + Exception Handling

**Weekly Goal:** Use List, Map, Set without notes. Write try-catch that handles real failure cases.

**Core Topics:** `ArrayList`, `HashMap`, `HashSet`, for-each, `Iterator`, try-catch-finally, custom exceptions, `throws`

**Task List:**

| # | Task | How to Do It | Done When |
|---|---|---|---|
| 1 | Write 10 ArrayList operations from scratch | add, remove, sort, search, size, contains, iterate, clear, get by index, subList | All 10 correct from memory. |
| 2 | Write a HashMap: city → population. Print all entries. | Use `entrySet()` for iteration. | Output is correct. You can explain `keySet()` vs `entrySet()`. |
| 3 | Write `divide(a, b)` that throws `DivisionByZeroException` | Custom exception class. Try-catch in caller. | All edge cases handled: zero, negative, normal. |
| 4 | Build **Student Grade Manager** (command line) | `HashMap<String, Integer>`. Add, query, delete. Handle all bad input. | Runs without crashing. Push to GitHub on a branch. Merge via PR. |
| 5 | Obsidian: "When do I use List vs Map vs Set?" | One example per type. Your own words. | You can answer this in 45 seconds in an interview. |

**Common Mistakes:**
- `NullPointerException` getting HashMap value: use `getOrDefault()` or `containsKey()` first.
- `ConcurrentModificationException`: never remove from a collection inside a for-each loop. Use `Iterator.remove()`.

**End of Week:** You use all three collection types confidently. You write and catch custom exceptions.

---

### Week 3 — Testing Thinking + Basic Test Design

**Weekly Goal:** Write tests that cover normal, edge, and negative cases. Understand what makes a good test before you write a single framework line.

**Core Topics:** What is a test case, normal vs edge vs negative cases, test coverage thinking, debugging mindset, how to find your own bugs before running tests

**Why This Week Exists:**
Most beginners skip testing theory and go straight to frameworks. The result is tests that only check the happy path and miss real bugs. This week fixes that before you ever write Selenium.

**Task List:**

| # | Task | How to Do It | Done When |
|---|---|---|---|
| 1 | Write test cases on paper for `divide(a, b)` — no code. Just scenarios. | List: normal inputs, zero divisor, both negative, one null, very large numbers. | At least 8 test cases written with expected results. |
| 2 | Write test cases for login form: valid, wrong password, empty, SQL injection, 300-char input | Paper only first. Then write as JUnit tests. | You cover at least 6 scenarios. |
| 3 | Write JUnit 5 tests for your Student Grade Manager. Cover all 3 case types. | `@Test`, `@ParameterizedTest`, `assertThrows` | Every method has at least 3 tests. All green. |
| 4 | Break your own code on purpose. Fix it. | Comment out one validation. Watch the test fail. Fix. | You understand what test failure messages mean. |
| 5 | Obsidian: "What is the difference between normal, edge, and negative test cases? Give one example each." | | You can answer this without notes in an interview. |

**Common Mistakes:**
- Only writing tests for expected success: this is the most common and expensive mistake in real testing.
- Not reading the assertion error message: the message tells you exactly what went wrong. Read it before debugging.

**End of Week:** You think like a tester before writing a single line of Selenium. You write tests that cover failure modes, not just success.

---

### Week 4 — BUFFER WEEK

**No new topics this week.**

**Why buffer weeks exist:**
You have 2–3 hours per day. Real life interrupts. Some concepts take longer than one week to sink in. Buffer weeks prevent a backlog from becoming a crisis.

**What to do this week:**

| Option | Use It When |
|---|---|
| Catch up on Week 1–3 tasks that are incomplete | You missed days or skipped tasks |
| Re-do any task from scratch without notes | You feel uncertain about any concept |
| Write Obsidian review notes for everything learned so far | You want to consolidate before moving on |
| Rest completely | You are burned out. Rest is not failure. |
| Debug any code that is still broken | Fix it now before it becomes technical debt |

**Rule:** Do not start Week 5 content until Week 4 buffer is used. Even if you feel fine, use the buffer to review and reinforce.

---

### Week 5 — Maven + Git Workflow

**Weekly Goal:** Build and manage Maven projects. Use Git branches like a professional.

**Core Topics:** Maven directory structure, `pom.xml`, `mvn compile/test/package`, Git branch, merge, rebase, pull request, merge conflict resolution

**Task List:**

| # | Task | How to Do It | Done When |
|---|---|---|---|
| 1 | Draw Maven folder structure from memory. Then verify. | No notes first. Draw `src/main/java`, `src/test/java`, `target/`, `pom.xml`. | You explain every folder's purpose without reading. |
| 2 | Add JUnit 5 dependency to `pom.xml`. Run `mvn test` from terminal. | Find coordinates on mvnrepository.com. Use terminal, not IDE run button. | `mvn test` passes in terminal. |
| 3 | Create branch `feature/grade-manager`. Add one feature. Merge to `main`. Do 3 times. | Terminal only. `git checkout -b → add → commit → push → PR → merge` | Three clean PRs visible on GitHub. |
| 4 | Create a merge conflict on purpose. Resolve it manually. | Edit same line on two branches. Merge. Fix the `<<<<<<` markers by hand. | Conflict resolved. You are no longer afraid of conflicts. |
| 5 | Write a professional README.md for `java-practice`. | Project description, how to run, tech stack. | A stranger can read it and run the project. |

**Common Mistakes:**
- Using IntelliJ GUI for Git: learn terminal commands. They work the same everywhere.
- `pom.xml` XML error: IntelliJ underlines it. Read the error. Usually a missing closing tag.

**End of Week:** You create Maven projects, add dependencies, run tests from terminal, and manage branches + PRs on GitHub.

---

### Week 6 — JUnit 5 Deep Dive + Stage 1 Project

**Weekly Goal:** Write professional unit tests. Finish and publish the first portfolio project.

**Core Topics:** `@BeforeEach`, `@AfterEach`, `@BeforeAll`, `@AfterAll`, `@ParameterizedTest`, `@CsvSource`, `@ValueSource`, `assertThrows`, `assertAll`, test coverage thinking

**Task List:**

| # | Task | How to Do It | Done When |
|---|---|---|---|
| 1 | Add `@ParameterizedTest` to your Grade Manager tests. Use `@CsvSource` with 6 data rows. | One test method runs all 6 rows. | All 6 pass. |
| 2 | Use `assertThrows` to verify all custom exceptions are thrown correctly. | | Tests pass. You can explain what `assertThrows` returns. |
| 3 | Build **Library Management System** (Stage 1 Project) | Add book, borrow book, return book, query status. OOP + Collections + Exceptions + JUnit 5. | All tests green. TDD: tests written before code. |
| 4 | Write README.md for Library project. Include class diagram, how to run, test screenshot. | | A stranger runs it in under 5 minutes. |
| 5 | Push to GitHub. Clean commit history. At least 8 commits with meaningful messages. | `feat:`, `test:`, `fix:`, `docs:` prefixes. | Commit history tells the story of how you built it. |

**Completion Standard:** Library project: code runs, all tests green, README professional, clean Git history, TDD approach visible in commit order.

**Interview Script (short, B2-friendly):**
> "I built a Library Management System in Java using OOP and JUnit 5. I used Test-Driven Development — I wrote the tests before the code. The project covers edge cases like borrowing a book that is already checked out."

---

### Week 7 — API Basics + Postman

**Weekly Goal:** Understand HTTP and REST well enough to design API tests. Use Postman to test real APIs manually.

**Why Here:**
Postman before Selenium gives you API intuition early. When you get to RestAssured in Week 12, you already understand what you are automating.

**Core Topics:** HTTP methods (GET/POST/PUT/PATCH/DELETE), status codes (200/201/400/401/403/404/422/500), JSON structure, request headers, `Content-Type`, `Authorization`, Postman environments, test scripts in Postman

**Task List:**

| # | Task | How to Do It | Done When |
|---|---|---|---|
| 1 | Obsidian: What does each HTTP method do? One real example per method. From memory. | No copying. | You answer "PUT vs PATCH" in 30 seconds without notes. |
| 2 | Test JSONPlaceholder API in Postman. Run GET, POST, PUT, DELETE on `/posts`. | https://jsonplaceholder.typicode.com | All 4 methods work. You understand each request structure. |
| 3 | Write Postman test scripts: assert status code, assert one response field, assert response time under 2 seconds. | `pm.test()` and `pm.expect()` | All 3 assertions pass. |
| 4 | Create Postman Environment with `{{base_url}}`. Use it in all requests. | | Changing the environment changes all request URLs at once. |
| 5 | Obsidian: "What is the difference between 401 and 403? Between 400 and 422? Between 200 and 201?" | One real scenario each. | You answer these instantly in interviews. |

**Common Mistakes:**
- 401 vs 403: 401 = not authenticated. 403 = authenticated but not allowed. Different problems, different fixes.
- POST returning 400: check `Content-Type: application/json` header. Forgetting it causes most POST failures.

**End of Week:** You understand HTTP deeply enough to design API tests. You use Postman to manually explore any API before automating it.

---

### Week 8 — Selenium WebDriver Foundations

**Weekly Goal:** Write stable Selenium tests without `Thread.sleep`. Understand locator strategies.

**Core Topics:** WebDriver setup, WebDriverManager, `findElement()`, `By.id/name/xpath/cssSelector`, `click()`, `sendKeys()`, `getText()`, `WebDriverWait`, `ExpectedConditions`, implicit vs explicit vs Fluent wait

**Task List:**

| # | Task | How to Do It | Done When |
|---|---|---|---|
| 1 | Add `selenium-java` 4.x + WebDriverManager to `pom.xml`. Open a browser and close it. | 5 lines of code. No manual ChromeDriver download. | Browser opens and closes. No errors. |
| 2 | Write a test: open Google, search "SDET interview", assert title contains "SDET". | Write yourself. No copy-paste. | Test passes. Assert is correct. |
| 3 | Write 10 locators for real page elements: ID, name, CSS, XPath (absolute, relative, `contains()`, `starts-with()`). | Use browser DevTools → Elements. Write your own locators. | Each finds the element. You explain why each works. |
| 4 | Remove all `Thread.sleep`. Replace with `WebDriverWait` + `ExpectedConditions`. | Practice on an element with a 2-second delay. | Zero `Thread.sleep` in your code. |
| 5 | Obsidian: "Implicit wait vs explicit wait vs Fluent wait." Code example for each. | | You explain the difference in 60 seconds without notes. |

**Common Mistakes:**
- `NoSuchElementException`: element not loaded → add explicit wait.
- `StaleElementReferenceException`: page changed after you found the element → re-find it inside the action.
- CSS vs XPath: prefer CSS for simple cases. Use XPath for `contains()`, `starts-with()`, or going up the DOM.

**End of Week:** Stable Selenium tests. No `Thread.sleep`. Multiple locator strategies mastered.

---

### Week 9 — BUFFER WEEK

**No new topics.**

**Use this week for:**
- Catch up on any incomplete Week 7–8 tasks
- Review locator strategies: write 20 XPaths and CSS selectors from memory
- Revisit WebDriverWait until it is automatic
- Review all Postman notes and HTTP status codes
- Rest if needed

**Self-check before Week 10:**
- Can you write a WebDriverWait without looking at documentation?
- Can you name 5 `ExpectedConditions` without notes?
- Can you explain 400 vs 401 vs 403 without hesitation?

If you answered no to any: use this buffer week to fix it.

---

### Week 10 — Page Object Model (POM)

**Weekly Goal:** Refactor all Selenium code into POM. Test classes must have zero `findElement()` calls.

**Core Topics:** POM concept, `BasePage` class, one Page class per page, test classes call only Page methods, `ThreadLocal<WebDriver>` for safe parallel execution

**Task List:**

| # | Task | How to Do It | Done When |
|---|---|---|---|
| 1 | Draw POM architecture on paper: `BasePage → LoginPage → HomePage`. Arrow shows test class calling Page methods only. | Draw before coding. | You explain each layer's job in 30 seconds. |
| 2 | Refactor Week 8 code into POM. Create `pages/` package. Move all locators. | No `findElement()` may remain in test class. | Test class reads like English. |
| 3 | Build `GoogleSearchPage` with `searchFor(keyword)` and `getFirstResultTitle()`. Write test using only these methods. | | Test class has zero locators or driver calls. |
| 4 | Build `BasePage` with `WebDriverWait` setup. All pages extend `BasePage`. | | Every page uses shared wait logic. |
| 5 | Obsidian: "Why use POM? What breaks after 3 months without it?" Write 4 specific problems. | | You answer "Why POM?" convincingly in any interview. |

**Common Mistakes:**
- `driver.findElement()` in the test class: if you see this, you are doing it wrong.
- `PageFactory.initElements()` missing: if you use `@FindBy`, you must call this in the constructor. Otherwise everything is null.

**End of Week:** Clean POM structure from scratch. Any UI change requires only one file update.

---

### Week 11 — Selenium Advanced + Testing + Reports

**Weekly Goal:** Handle complex UI elements. Run tests with Testing. Generate an HTML report.

**Core Topics:** `Select` dropdown, `Alert`, `switchTo().frame()`, `Actions` (hover, drag), `TakesScreenshot`, Testing basics (`@BeforeSuite`, `@AfterSuite`, `groups`, `priority`), `testng.xml`, ExtentReports

**Task List:**

| # | Task | How to Do It | Done When |
|---|---|---|---|
| 1 | Handle dropdown with `Select`. Handle alert popup. Handle iframe. | Use the-internet.herokuapp.com for practice. | All 3 work. You explain each approach. |
| 2 | Screenshot on failure: capture in `@AfterMethod` when test fails. Save with timestamp. | `TakesScreenshot`. Use `System.currentTimeMillis()` in filename. | Failed test saves screenshot automatically. |
| 3 | Add Testing. Create `testng.xml` with `smoke` and `regression` groups. | | Each group runs independently. |
| 4 | Add ExtentReports. Generate HTML report. Attach screenshots on failure. | `ITestListener` implementing `onTestFailure`. | Report opens in browser. Failure shows screenshot. |
| 5 | Push all updates to GitHub. Add report screenshot to README. | | README shows what the report looks like. |

**Common Mistakes:**
- Parallel tests sharing one WebDriver: causes crashes. Use `ThreadLocal<WebDriver>` in WebDriverFactory. This is mandatory for parallel execution.
- ExtentReports empty: you forgot `extent.flush()` in `@AfterSuite`.

**End of Week:** Professional HTML test reports. Screenshots on failure. Testing suite management.

---

### Week 12 — UI Automation Portfolio Project

**Weekly Goal:** Build and publish the second portfolio project: a complete UI automation framework.

**Project:** E-Commerce UI Automation Framework
**Target Site:** https://www.saucedemo.com (free, stable, designed for test practice)

**Features:**
- Login: valid, invalid, locked user (data-driven from CSV)
- Product sort and filter
- Add to cart, update quantity, remove
- Complete checkout flow
- Failure screenshots in HTML report

**Tech Stack:** Selenium WebDriver, Java, Testing, POM, ExtentReports, WebDriverManager, Maven, Git

**Task List:**

| # | Task | Completion Standard |
|---|---|---|
| 1 | Design POM: list every page class and its methods in Obsidian first. | 4+ page classes identified before writing code. |
| 2 | Build all page classes with `BasePage` inheritance. | No locators in test classes. |
| 3 | Write 12+ test scenarios. Use CSV for login data. | Tests read like business requirements. |
| 4 | `testng.xml` with smoke/regression. 2 threads parallel. | Both suites run independently without flakiness. |
| 5 | ExtentReports + screenshots on failure. | Every failure has a screenshot embedded in the report. |
| 6 | README: architecture, tech stack, how to run, report screenshot. | Stranger runs it in under 10 minutes. |

**Interview Script:**
> "I built a Selenium framework for an e-commerce site using Page Object Model. It covers login, cart, and checkout with 12 test scenarios. I used Testing for parallel execution and ExtentReports for HTML reporting. It runs in CI on every push."

---

### Week 13 — RestAssured API Automation

**Weekly Goal:** Write real API tests in Java. All test data from external files.

**Core Topics:** `given().when().then()`, path params, query params, request body, `JsonPath`, Jackson for serialization, `Hamcrest` matchers, negative API tests

**Task List:**

| # | Task | How to Do It | Done When |
|---|---|---|---|
| 1 | Add RestAssured + Jackson to `pom.xml`. Write first test: GET `/posts/1`, assert `id == 1`. | `given().when().get("/posts/1").then().statusCode(200).body("id", equalTo(1))` | Test passes. You wrote it yourself. |
| 2 | Write POST test: send JSON body via POJO + Jackson. Assert 201 and non-null `id`. | Jackson `ObjectMapper` serializes POJO to JSON. | Test passes. No raw JSON strings in the test. |
| 3 | Write DELETE test. Write 404 test for nonexistent resource. | | Positive and negative tests both pass. |
| 4 | Extract response field with `JsonPath`. Assert nested field like `address.city`. | `response.jsonPath().getString("address.city")` | You can navigate any JSON path. |
| 5 | Move all test data to JSON file. Use Jackson to read it. No hardcoded values in test classes. | `src/test/resources/testdata/users.json` | Zero hardcoded data in test class. |

**Common Mistakes:**
- `ClassCastException` in JsonPath: check the actual JSON type. If `id` is a string in JSON, use `getString()` not `getInt()`.
- POST returning 400: print request body with `.log().body()`. Usually a missing Content-Type header or wrong field name.

---

### Week 14 — BUFFER WEEK

**No new topics.**

**Use this week for:**
- Finish API project and make it portfolio-ready
- Add README to the UI project if not done
- Review HTTP methods and status codes from memory
- Write or update Obsidian interview Q&A for Selenium and API testing
- Practice explaining Week 12 and Week 13 projects out loud in English
- Rest if needed

**Self-check before Week 15:**
- Can you explain your UI project in 2 minutes without notes?
- Can you write a RestAssured POST test from scratch in 15 minutes?
- Can you explain 400 vs 401 vs 403 vs 404 without hesitating?

---

### Week 15 — API Automation Portfolio Project + SQL + Linux

**Weekly Goal:** Publish the third portfolio project. Learn SQL and Linux at junior level only.

**API Project:**

**Project:** API Automation Framework
**Target API:** https://reqres.in

**Features:**
- GET user list and single user
- POST create user, assert response body
- PUT update user
- DELETE user, assert 204
- Login success and failure (negative testing)
- All data from JSON files

**Tech Stack:** RestAssured, Java, Testing, Jackson, ExtentReports, Maven, Git

**SQL (3 days only):**
- `SELECT`, `WHERE`, `AND/OR`, `ORDER BY`
- `INNER JOIN`, `LEFT JOIN`
- `COUNT`, `GROUP BY`
- Practice on SQLZoo.net, no installation

**Linux (2 days only):**

| Command | Why You Need It |
|---|---|
| `ls, cd, mkdir, cp, mv, rm` | Navigate CI servers |
| `cat, grep, find` | Read and search log files |
| `tail -f app.log` | Watch logs during debugging |
| `chmod +x script.sh` | Make scripts executable |
| `mvn test` from terminal | Run tests without IDE |

**Interview Script for API Project:**
> "I built a RestAssured API framework for a user management API. It covers CRUD operations, negative tests for 404 and auth failures, and data-driven inputs from JSON files. Tests are organized with Testing and produce HTML reports."

---

### Week 16 — BDD/Cucumber + GitHub Actions CI/CD

**Weekly Goal:** Learn Cucumber basics. Configure CI to run tests automatically on every push.

**Cucumber (compressed to 4 days):**
- Gherkin: Feature, Scenario, Given/When/Then, `Scenario Outline`, `Examples`
- Step Definitions, Cucumber Runner class, `@Before`/`@After` hooks
- Write 3 feature files. Connect them to existing POM page classes.
- Generate Cucumber HTML report.

**Why Compressed:**
Cucumber is important for enterprise teams. But building a full BDD framework from scratch is not the best use of your limited time. Learn it enough to demonstrate it in an interview and add it to your capstone project.

**GitHub Actions CI/CD (3 days):**

| Task | How to Do It | Done When |
|---|---|---|
| Create `.github/workflows/ci.yml` | Trigger on push to main. Use `runs-on: ubuntu-latest`. Run `mvn test`. | GitHub Actions tab shows a green run. |
| Add headless mode | `--no-sandbox --disable-dev-shm-usage` Chrome options for Linux CI | Tests pass in headless mode on GitHub. |
| Upload HTML report as artifact | `actions/upload-artifact` | Report downloadable from Actions run page. |
| Add CI badge to README | Copy badge from Actions settings | README shows green badge. |

**End of Week:** You can demonstrate BDD in an interview. Your GitHub shows a green CI badge.

---

### Week 17 — Capstone Project: Design + Build

**Weekly Goal:** Start building the capstone project: a full E2E framework combining everything.

**Project Architecture:**

```
src/
├── main/java/
│   ├── pages/              → Page Object classes
│   ├── utils/              → WebDriverFactory (ThreadLocal), ConfigReader
│   └── api/                → ApiClient, request helpers
├── test/java/
│   ├── stepDefinitions/    → BDD step definitions
│   ├── runners/            → CucumberRunner
│   ├── apiTests/           → RestAssured tests
│   └── hooks/              → Cucumber Before/After
├── resources/
│   ├── features/           → Gherkin .feature files
│   ├── testdata/           → JSON and CSV files
│   └── config.properties   → Browser, URL, environment
```

**Task List:**

| # | Task | Done When |
|---|---|---|
| 1 | Create project skeleton with all packages | Structure exists. Each folder has a purpose. |
| 2 | Build `WebDriverFactory` with `ThreadLocal<WebDriver>`. Support Chrome and Firefox via config. | No hardcoded browser name in test code. |
| 3 | Build `ConfigReader` for `config.properties`. | No hardcoded URLs or timeouts anywhere. |
| 4 | Migrate UI POM + BDD layer from Week 16. | UI scenarios run from feature files. |
| 5 | Migrate API tests from Week 15. | API tests run alongside UI tests. |

---

### Week 18 — Capstone Project: Finish + Polish

**Weekly Goal:** Complete capstone. Configure CI. Write professional README. Project is interview-ready.

**Task List:**

| # | Task | Done When |
|---|---|---|
| 1 | Unified HTML report: UI + API tests both write to one ExtentReports file. | One report shows everything. |
| 2 | GitHub Actions CI runs all tests on every push. | Green badge on README. Report downloadable from Actions. |
| 3 | Write README: architecture diagram, tech stack, how to run, CI badge, screenshots. | A senior engineer understands the framework in 5 minutes without asking questions. |
| 4 | Clean commit history. No "update" or "fix" commits. | Every commit tells a story. |
| 5 | Record yourself explaining the capstone for 2 minutes in English. Listen back. Fix weak parts. | You can explain it clearly without filler words. |

**Interview Script:**
> "My capstone project is a full E2E automation framework. It combines Selenium for UI testing, RestAssured for API testing, and Cucumber for BDD. It runs automatically in GitHub Actions CI on every push and generates one combined HTML report. I built it to simulate what a real test infrastructure looks like at a company."

---

### Week 19 — BUFFER WEEK

**No new topics.**

**Use this week for:**
- Polish all GitHub projects: README, commit history, screenshots
- Add 20 questions to Obsidian `Interview_QA` vault
- Practice all 3 project explanations out loud. Record yourself.
- Fix anything in the capstone that is not working
- Start the resume draft if not already started
- Rest if needed

**Self-check before Week 20:**
- Can you explain all 3 projects in English without notes?
- Do all 3 GitHub repos have professional READMEs?
- Have you written answers for at least 30 interview questions in Obsidian?

---

### Week 20 — Full Interview Sprint

**Weekly Goal:** Resume finalized. GitHub polished. Mock interviews done. Applications sent.

**Task List:**

| # | Task | Done When |
|---|---|---|
| 1 | Final resume: STAR format for all 3 projects. One page. | Every bullet: what + how + result. |
| 2 | GitHub Profile README: bio, skills, 3 project links with one-sentence descriptions. | Readable in under 30 seconds. |
| 3 | Practice 2-minute explanation for each project. Record. Fix. Repeat. | No hesitation, no filler words, no reading from notes. |
| 4 | Complete 2 mock interviews on Pramp or with a partner. Get written feedback. | Feedback written down. Weak answers improved. |
| 5 | Send at least 10 applications. | Applications sent. Not "almost ready." Sent. |

---

## 5. Project Roadmap

### Project 1 — Library Management System

| Item | Detail |
|---|---|
| **Goal** | Prove Java OOP and unit testing discipline |
| **Why worth doing** | Proves Java fundamentals with code, not words |
| **Tech Stack** | Java OOP, Collections, Exception Handling, JUnit 5, Maven, Git |
| **Implementation Order** | Class design → write tests first → implement → README |
| **What it proves** | You write structured, testable Java from scratch |
| **Interview explanation** | Emphasize TDD, edge case coverage, exception design |

---

### Project 2 — E-Commerce UI Automation Framework

| Item | Detail |
|---|---|
| **Goal** | Prove Selenium + POM + Testing skills |
| **Why worth doing** | UI automation is asked in every SDET interview. A working framework is far stronger than "I know Selenium." |
| **Tech Stack** | Selenium, Java, Testing, POM, ExtentReports, WebDriverManager, Maven, Git |
| **Implementation Order** | POM design → page classes → test scenarios → parallel config → reports → README |
| **What it proves** | You build maintainable UI automation frameworks independently |
| **Interview explanation** | Emphasize POM rationale, ThreadLocal for parallel safety, report generation |

---

### Project 3 — API Automation Framework

| Item | Detail |
|---|---|
| **Goal** | Prove RestAssured + API testing skills |
| **Why worth doing** | API testing is equally or more valued than UI automation at many companies |
| **Tech Stack** | RestAssured, Java, Testing, Jackson, ExtentReports, Maven, Git |
| **Implementation Order** | POJO models → ApiClient → positive tests → negative tests → data files → reports → README |
| **What it proves** | You understand REST, HTTP, and can write professional API tests with proper assertions |
| **Interview explanation** | Emphasize negative testing, data externalization, POJO-based request design |

---

### Project 4 — E2E Test Automation Framework (Capstone)

| Item | Detail |
|---|---|
| **Goal** | Prove you can design and own a full enterprise test framework |
| **Why worth doing** | This is the project that makes you look like a mid-level engineer, not just an entry-level one |
| **Tech Stack** | Java + Selenium + RestAssured + Cucumber + Testing + GitHub Actions + Maven |
| **Implementation Order** | Architecture → config management → WebDriverFactory → UI layer → API layer → BDD layer → CI → reporting → README |
| **What it proves** | You can own the full test infrastructure from design to CI |
| **Interview explanation** | Walk through architecture. Explain ThreadLocal, config management, unified reporting. Show CI badge. |

---

## 6. Daily SOP — 7-Step Routine

Do this every study day. No exceptions. No modifications.

---

**Step 1 — Review (5 minutes)**
Open Obsidian. Read yesterday's notes.
Find anything marked "still unclear." That goes to the top of today's task list.
If yesterday's Git shows no commit, that task is today's first job.

---

**Step 2 — Write today's goal (5 minutes)**
Write on paper or Obsidian:
- "Today I will learn: ____________________"
- "Today I will build: ____________________"
- "I will know I am done when: ____________________"

"Understand Selenium" is not a goal.
"Write a Page Object class for login with 3 methods and 2 passing tests" is a goal.

---

**Step 3 — Outline before coding (10 minutes)**
Before opening IntelliJ, write in plain English:
- What does this code need to do?
- What are the inputs?
- What should the output be?
- What can go wrong?

Do this on paper. Engineers who skip this step waste hours debugging problems they could have avoided in 5 minutes of thinking.

---

**Step 4 — Code on your own (60–90 minutes)**
Rules:
1. Write the code yourself first. Always.
2. Stuck? Search official documentation first.
3. Still stuck after 15 minutes? Then ask AI.
4. Ask AI for explanation, not for the answer.
5. 70% of code from your own hands.

On no-AI days (2 per week): no AI tools at all. These are your real skill measurement days.

---

**Step 5 — AI review after your attempt (10–15 minutes)**
Paste your code to a cloud AI. Ask exactly this:
> "Review this code for readability, exception handling, and design issues. List problems only. Do not rewrite it."

Read the feedback. Decide what to change yourself. Fix it yourself.

---

**Step 6 — Obsidian notes (10 minutes)**
Write exactly 3 things:
1. What I learned today. My own words.
2. One mistake I made and exactly how I fixed it.
3. One thing I still do not understand. (This becomes tomorrow's Step 1 priority.)

Add tags: `#selenium`, `#week8`, `#wait`, `#bug`

---

**Step 7 — Git commit (5 minutes)**
Commit everything written today.

✅ `feat: add LoginPage POM with explicit wait`
✅ `test: add negative cases for checkout with empty cart`
✅ `fix: resolve StaleElementReferenceException in ProductListPage`
❌ `update`
❌ `fix`
❌ `changes`

Push to GitHub. Open GitHub. See your commit.

**No commit = the day did not happen.**

---

## 7. AI Tool Division

### Tool Assignment

| Tool | Best For | Do Not Use For |
|---|---|---|
| **Continue** (IDE plugin) | Real-time completion while typing, explaining a single line, generating boilerplate you fully understand | Writing logic you cannot explain, planning |
| **Cline** (Claude in IDE) | Multi-file refactoring, project scaffolding (skeleton only), debugging errors that span multiple files, generating test case checklists | Writing test logic for you, replacing your understanding |
| **Local models** (Ollama) | Reviewing private/confidential code offline, concept checks when offline, practicing interview questions | Accurate library documentation, complex reasoning |
| **Cloud models** (Claude, GPT-4) | Deep concept explanations, design pattern discussion, interview Q&A practice, resume + README polish, explaining complex errors | Daily code completion, writing production logic end-to-end |

---

### AI Control Rules

**In Java foundation weeks (Week 1–6):**
AI must not generate core logic for you. OOP structure, collection operations, exception classes: you write these yourself. AI may review after you are done.

**After Week 7:**
AI may assist with boilerplate and review. AI must not write test logic, assertions, or architectural decisions for you.

**Always:**
- Think first. Ask AI second.
- Write the skeleton first. Ask AI to review second.
- Explain every AI-generated line before using it. If you cannot explain it, delete it and write it yourself.
- Two no-AI days per week. These are your real skill measurement days.

---

### Correct AI Usage Examples

**Good:**
> "My test throws StaleElementReferenceException. Explain what causes it. Do not fix it for me."

**Good:**
> "Review my LoginPage class for POM compliance and wait strategy issues. List problems only."

**Good:**
> "Act as an SDET interviewer. Give me 5 questions about Selenium waits. Do not give answers yet."

**Bad:**
> "Write a Page Object for the login page."

**Bad:**
> "Here is my feature requirement. Write all the test code."

**Bad:**
> Reading AI output for 20 minutes without writing code.

---

### Obsidian Prompt Library

Create folder `AI_Prompts/` with categories:

```
AI_Prompts/
├── debugging/
│   "My error is [X]. My code is [Y]. Explain the root cause. No fix."
│   "This locator fails: [X]. Explain why."
├── learning/
│   "Explain [concept] simply. I know Java basics but no testing experience."
│   "Give me 5 interview questions on [topic]. No answers yet."
├── code_review/
│   "Review for: readability, POM compliance, exception handling. List issues only."
├── interview/
│   "Act as SDET interviewer. Ask me about [topic]. Evaluate my answers."
```

---

## 8. Check System

### Weekly Self-Check (Every Friday, 10 minutes)

```
□ Did I commit code every day?
□ Can I explain this week's topic for 60 seconds without notes?
□ Did I write 70%+ of the code myself?
□ Did I record at least one mistake in Obsidian?
□ Did I hit this week's output target?
□ What do I still not understand? (Write it. Fix it Monday.)
```

---

### Stage Completion Criteria

**Stage 1 complete (after Week 6):**
- [ ] Write Java OOP class hierarchy from scratch in under 10 minutes, no notes
- [ ] Write JUnit 5 `@ParameterizedTest` and `assertThrows` from scratch
- [ ] Run `mvn test` from terminal. Explain every file in `pom.xml`.
- [ ] GitHub has 20+ meaningful commits

**Stage 2 complete (after Week 15):**
- [ ] Write a Page Object class from scratch in under 10 minutes, no notes
- [ ] Explain `ThreadLocal<WebDriver>` and why it matters
- [ ] UI project: 12+ tests, report, clean README on GitHub
- [ ] Write RestAssured POST test in under 20 minutes from scratch
- [ ] API project: 12+ tests, negative cases, data externalized, report

**Stage 3 complete (after Week 20):**
- [ ] Write Gherkin feature file with Scenario Outline from scratch
- [ ] GitHub Actions CI green. README has badge.
- [ ] Resume written. Capstone README professional.
- [ ] 2 mock interviews done with feedback notes.
- [ ] 10+ applications sent.

---

### Fake Learning Detection

| Warning | Real Problem | Fix |
|---|---|---|
| 3 hours of video, zero lines of code | Entertainment, not learning | Close video. Open IntelliJ. Write code now. |
| Can explain it but cannot build it | Surface understanding | Close notes. Build it from scratch. Fail. Fix it. |
| More than 15 min/day "organizing notes" | Procrastination | Notes max 15 min. Rest is coding time. |
| Starting new topics before finishing current week | Breadth anxiety | Finish week N before opening week N+1. |
| 3+ days without a Git commit | Plan abandoned in practice | Return today. One small commit is not zero. |
| AI wrote more than 30% of this week's code | Learning AI output, not learning to code | Two no-AI days this week. Rewrite AI sections yourself. |

---

### How to Record Mistakes

Use this format in Obsidian:

```
Date: 2025-01-22
Week: 8
Topic: Selenium / Explicit Wait
Error: NoSuchElementException on ProductPage line 34
Root Cause: findElement() called before element loaded. No wait used.
Fix: Added WebDriverWait with ExpectedConditions.visibilityOfElementLocated()
Lesson: Never call findElement() on dynamic element without explicit wait.
Tags: #selenium #wait #debugging #week8
```

Review all mistake notes at the start of each new stage. Patterns show you what needs more practice.

---

### How to Organize GitHub

**Every portfolio repo must have:**

```
README.md
  ├── Project name + 2-sentence description
  ├── Tech stack with version numbers
  ├── Architecture diagram or folder tree
  ├── Exact run commands (copy-paste ready)
  ├── Test report screenshot
  └── "What this demonstrates" section
```

**GitHub Profile README must have:**
- One-line professional bio
- Tech stack list
- Links to 3 projects with one-sentence descriptions

**Commit history rules:**
- No "WIP", "fix", "update", or random text
- Every commit explains what changed and why
- At least 10 commits per project showing how it grew

---

## 9. Job Preparation

### Timeline

| When | Action |
|---|---|
| **Week 6** | Start Obsidian `Interview_QA`. First 20 questions. Clean up Library project. |
| **Week 10** | Start practicing project explanations out loud in English. 2 minutes per project. |
| **Week 12** | Write first resume draft. You now have 2 real projects. |
| **Week 15** | Update resume with API project. 3 projects. Send to 2 reviewers for feedback. |
| **Week 16** | Start mock interviews. You are ready enough. Do not wait for perfect. |
| **Week 18** | Start sending applications. Not after Week 20. Now. |
| **Week 19–20** | Apply to 10+ jobs per week. Improve answers after every interview. |

---

### Most Common SDET Interview Questions

**Java / OOP:**
- What are the 4 OOP principles? Give one code example each.
- Interface vs abstract class: when do you use which?
- Method overloading vs overriding: what is the difference?
- What is `final` in Java?

**Testing concepts:**
- What is the testing pyramid? Why does it matter?
- Unit vs integration vs E2E: what is the difference?
- What makes a test flaky? How do you fix flaky tests?
- How do you decide what to automate?

**Selenium:**
- Why do you use POM?
- Explicit vs implicit vs Fluent wait: when do you use each?
- How do you handle StaleElementReferenceException?
- What is ThreadLocal and why does parallel execution need it?

**API testing:**
- GET vs POST vs PUT vs PATCH vs DELETE: when do you use each?
- 400 vs 401 vs 403 vs 404 vs 500: what is each?
- How do you design negative test cases for an API?

**Framework:**
- Walk me through your automation framework architecture.
- Why did you use Testing instead of JUnit (or the reverse)?
- What is CI/CD? How does test automation fit into it?

**Behavioral:**
- Tell me about a time your test caught a real bug.
- How do you handle disagreement with a developer about a bug?
- How would you build a test strategy for a new feature?

---

### LeetCode Scope

**Required: 10–15 Easy problems only.**

| Problem | Why |
|---|---|
| Two Sum (#1) | HashMap usage |
| Valid Parentheses (#20) | Stack logic |
| Reverse String (#344) | String manipulation |
| Contains Duplicate (#217) | HashSet usage |
| Maximum Subarray (#53) | Array iteration |
| Merge Two Sorted Lists (#21) | Pointer logic |
| Majority Element (#169) | HashMap counting |

**Not required:** Dynamic programming, graphs, advanced trees.

**What matters most:** Explain your thinking out loud while solving. SDET interviewers care about reasoning, not just the solution.

---

### Resume Bullet Strategy

**Format:** Action verb + what you built + how you built it + result

**Bad:** "Wrote Selenium tests."

**Good:** "Designed a Selenium WebDriver + Java framework using POM, covering 12 end-to-end test scenarios; integrated Testing for parallel execution and ExtentReports for HTML reporting with automatic failure screenshots."

**Numbers to use (even estimates):**
- "12+ automated test scenarios"
- "CI pipeline triggers on every push"
- "3 portfolio projects covering UI, API, and BDD testing"

**Rule:** Every skill on your resume must link to a GitHub project that proves it.

---

### How to Present Projects as Real Work Experience

Formula: **Problem → Decision → Implementation → Result**

**Example:**
> "Running all UI tests sequentially was too slow. I configured Testing parallel execution with thread-count 3. But that caused race conditions because multiple threads shared one WebDriver. I solved this by implementing WebDriverFactory with ThreadLocal, giving each thread its own isolated driver. The result is stable parallel execution without flakiness."

This is how engineers on real teams talk. The project was personal. The thinking is professional.

---

## 10. Simplified Version vs Standard Version

### Standard Version (Recommended)

| Item | Detail |
|---|---|
| **Weekly hours** | 14–21 hours (2–3 hrs/day) |
| **Content** | Full stack: all Must-have + Important topics + 4 projects + buffer weeks |
| **Duration** | 20 weeks with 4 buffer weeks |
| **For** | Anyone with 2+ hours daily and a clear job goal |

**Follow the standard version. You have the time for it.**

---

### Simplified Version (Use only if time drops significantly)

| Item | Detail |
|---|---|
| **Weekly hours** | 10–14 hours (1.5–2 hrs/day) |
| **Removed** | Mockito (skip), Jenkins (already removed), Linux (1 day cheat sheet), SQL (3 days SELECT + JOIN only), BDD (no project, concepts only), Testing (basics only, no parallel), Capstone (UI + API merged into one project) |
| **Kept** | Java OOP + JUnit 5 + Maven + Git + Selenium + POM + RestAssured + GitHub Actions |
| **Projects** | 2 projects: UI automation + API automation (merged capstone) |
| **Duration** | 16–17 weeks |

**Switch to simplified only if** you consistently have less than 1.5 hours per day for 3+ weeks in a row.

**Do not start with simplified.** Try standard for 4–6 weeks first. The standard version takes longer but produces a much stronger candidate.

---

## 11. Biggest Mistakes to Avoid

### Mistake 1: Learning Without Building
You watch tutorials for hours and feel productive. You open a blank file and cannot write a single line.

**Fix:** After every 15 minutes of watching or reading, close the source and write code from memory. If you cannot, you did not learn it. Understanding is not the same as being able to produce.

---

### Mistake 2: Projects Too Weak to Show
Your GitHub has 4 test methods, no README, no structure, no report.

**Fix:** Before marking any project done, ask: "Would I be comfortable screen-sharing this to a senior engineer?" If not, it is not done. Every portfolio project needs a professional README, a visible test report, and a clean commit history.

---

### Mistake 3: Framework Without Understanding
You can run Cucumber but cannot explain what problem BDD solves or when not to use it.

**Fix:** For every framework you learn, write in Obsidian: "What problem does this solve? What breaks without it? When would I not use it?" These three questions prepare you for every "why" question in interviews.

---

### Mistake 4: AI Replaces Thinking
You ask AI for code before trying. After 8 weeks, you cannot write a Page Object class alone.

**Fix:** 70/30 rule is not optional. Two no-AI days per week are not optional. What you can produce without AI is your real skill. AI output is not your skill.

---

### Mistake 5: Waiting Too Long to Apply
"One more week." "I need to finish Cucumber." "My capstone is not ready." This loop never ends.

**Fix:** Apply at Week 18. Junior SDET roles hire for learning ability and real projects, not perfection. Every week you delay is a week without interview feedback.

---

### Mistake 6: Only UI Automation
Your resume shows only Selenium.

**Fix:** API testing is increasingly weighted equally with UI automation. Missing it is a visible gap. Build the API project. Put it on your resume.

---

### Mistake 7: Only Happy Path Tests
Every test you write has valid input and expected success. No null. No boundary. No error.

**Fix:** For every feature you test, ask: null input? Empty string? Boundary value? Invalid type? Server error? Real testers find bugs that developers missed. Developers test what works. Testers test what breaks.

---

### Mistake 8: Messy Git History
Every commit is "update", "fix", or "changes."

**Fix:** Use `feat:`, `test:`, `fix:`, `docs:`, `refactor:` format from day one. Your commit history is part of your portfolio. It is a record of how you work. Interviewers look at it.

---

### Mistake 9: No English Practice Until Too Late
Your code is solid. But when the interviewer says "walk me through your framework," you freeze.

**Fix:** Start practicing English project explanations at Week 10, not Week 20. Record yourself. Listen back. Fix the specific places where you lose confidence or vocabulary. Two minutes per project, practiced three times per week.

---

### Mistake 10: Skipping Buffer Weeks
You feel ahead. You skip the buffer week and start the next stage early.

**Fix:** Do not skip buffer weeks. You are not ahead because you feel ahead. You are ahead when you can reproduce everything from the previous stage from scratch without notes. Buffer weeks are your insurance. Use them.

---

> **The plan is here. The execution is yours.**
> Four projects. Clean GitHub. Working CI. Practiced English explanations.
> That is what gets the offer.

---

*Version 4.0 | Target: Entry/Junior SDET | U.S. market | 2025*
