1. What are some common HTTP status codes?

1xx - Informational
Request was received and is continuing a process.

2xx - Success
An action was requested by client, it was received, understood, accepted, and processed successfully.

3xx - Redirection
Client must take additional steps or actions to complete the request.

4xx - Client Error
Typically there is some sort of error of input that the server is unable to read, process, or execute.

5xx - Server Error
The request is valid, but for some reason the server is unable to fulfill the request.

2. What is the difference between a GET request and a POST request? When might each be used?
Methodologies are different. POST is used to post and push data 
POST is for writing. POST is when you want to send information, to go up there. POST something to a server. You need to provide body details, that's why you bring the body. Whereas the GET doesn't need to provide body text, it simply calls for the resource.

3. Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Cookies are plain text files containing no executable code, but information that a server tells the browser to store that helps identify that individual user whenever he or she likes to re-visit that same web server/website.

This is a good resource:
https://www.nczonline.net/blog/2009/05/05/http-cookies-explained/