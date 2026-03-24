# API Testing – Cart Functionality

## Overview
This document describes API testing of the shopping cart functionality for a web application.
Testing was performed using Fiddler by intercepting and analyzing HTTP requests and responses.

---

## Tools Used
- Fiddler
- Browser DevTools (Network tab)

---

## Endpoint
POST /api/cart/add  
GET /api/cart  
DELETE /api/cart/{itemId}

---

## Request Example – Add Item

```json
{
  "userId": 101,
  "productId": 555,
  "quantity": 2
}
```

---

## Response Example – Add Item (Success)

```json
{
  "status": "success",
  "cartId": 789,
  "items": [
    {
      "productId": 555,
      "quantity": 2
    }
  ]
}
```

---

## Test Scenarios

### 1. Add Item to Cart
- Send request with valid `userId` and `productId`  
- Expected: 200 OK  
- Item added to cart, response contains updated cart

### 2. Add Item with Invalid Product
- Send request with non-existing `productId`  
- Expected: 404 Not Found  
- Error message returned

### 3. Get Cart Contents
- Send GET request for user’s cart  
- Expected: 200 OK  
- Response includes all items in cart

### 4. Remove Item from Cart
- Send DELETE request for existing `itemId`  
- Expected: 200 OK  
- Item removed from cart, updated cart returned

---

## What Was Verified
- Correct status codes: 200 (success), 404 (not found)  
- Response structure (JSON format)  
- Items correctly added, listed, and removed  
- Error messages correctness  
- Response time (basic check)

---

## Observations
- Deleting an item updates cart totals correctly  
- Error messages for invalid product IDs are descriptive  
- Quantity updates work as expected

---

## Conclusion
Cart API handles basic add, list, and remove operations correctly, with proper error handling and structured responses.
