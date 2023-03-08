    // 3.1 JSON assertions

var jsonData = pm.response.json();

pm.test("Correct First Name is returned", function () {
    pm.expect(jsonData.FirstName).to.eql(environment.FirstName);
});

pm.test("Correct Last Name is returned", function () {
    pm.expect(jsonData.LastName).to.eql(environment.LastName);
});

    // 3.2 Nested JSON assertions

pm.test("Correct City is returned", function () {
    pm.expect(jsonData.location.city).to.eql(environment.city);
});

    // 3.3 Asserting on complicated JSON

pm.test("Carol's second dog is named Fred", function () {
    var jsonData = pm.response.json();
    pm.expect(jsonData.owners[2].pets.dogs[1].name).to.eql("Fred");
});

    // Challenge: Complicated assertions

pm.test("Bob's first cat is two years old", function () {
    var jsonData = pm.response.json();
    pm.expect(jsonData.owners[1].pets.cats[0].age).to.eql(2);
});
