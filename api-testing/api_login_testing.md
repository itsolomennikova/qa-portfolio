# API Testing – Login Functionality

## Overview
This document describes API testing of the login functionality for a web application.
Testing was performed using Fiddler by intercepting and analyzing HTTP requests and responses.

---

## Tools Used
- Fiddler
- Browser DevTools (Network tab)

---

## Endpoint
POST /api/login

---

## Request Example

```json
{
  "email": "user@test.com",
  "password": "123456"
}
```

---

## Response Example (Success)

```json
{
  "token": "abc123xyz",
  "userId": 101
}
```

---

## Test Scenarios

### 1. Valid Login
- Send request with valid email and password  
- Expected: 200 OK  
- Response contains authentication token

### 2. Invalid Password
- Send request with valid email and wrong password  
- Expected: 401 Unauthorized  
- Error message returned

### 3. Empty Fields
- Send request with empty email and password  
- Expected: 400 Bad Request  
- Validation error returned

### 4. Missing Fields
- Send request without password field  
- Expected: 400 Bad Request

---

## What Was Verified
- Correct status codes: 200 (success), 401 (unauthorized), 400 (bad request)  
- Response structure (JSON format)  
- Presence of authentication token  
- Error messages correctness  
- Response time (basic check)

---

## Observations
- Error messages may not always clearly describe the issue  
- Validation behavior depends on request structure

---

## Conclusion
API login functionality handles basic scenarios correctly, but error handling and validation messages can be improved.
