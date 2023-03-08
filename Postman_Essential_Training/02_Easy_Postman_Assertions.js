    // 2.1 Status type assertions

pm.test("Correct contact is returned", function () {
    pm.expect(pm.response.text()).to.include("asmith@thinkingtester.com");
});

pm.test("Status code is 404", function () {
    pm.response.to.have.status(404);
});

    // 2.2 Body assertions

pm.test("Correct contact is returned", function () {
    pm.expect(pm.response.text()).to.include("asmith@thinkingtester.com");
});

pm.test("Missing First Name error is returned", function () {
    pm.expect(pm.response.text()).to.include("First Name is required");
});

    // 2.3 Header and response time assertions

pm.test("Content-Type is application/json", function () {
    pm.response.to.have.header("Content-Type", "application/json; charset=utf-8");
});

pm.test("Response time is less than 3000ms", function () {
    pm.expect(pm.response.responseTime).to.be.below(3000);
});

    // 2.5 Challenge: Write assertions

pm.test("Missing Email error is returned", function () {
    pm.expect(pm.response.text()).to.include("Email is required");
});
