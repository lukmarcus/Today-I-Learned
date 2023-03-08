// Setting environment variables
var jsonData = pm.response.json();
pm.environment.set("contactID", jsonData._id);
pm.environment.set("firstName", jsonData.firstName);
pm.environment.set("lastName", jsonData.lastName);
pm.environment.set("email", jsonData.email);
pm.environment.set("city", jsonData.location.city);
pm.environment.set("country", jsonData.location.country);
pm.environment.set("jobTitle", jsonData.employer.jobTitle);
pm.environment.set("company", jsonData.employer.company);
