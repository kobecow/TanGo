# Overview

| FuncID      | Name | Detail    |
| :---        |    :----:   |       :---: |
| 1      | Sign Up, Sign in       | [Click](#Sign\ Up,\ Sign\ in)   |
| 2   | Onboarding        |  [Click](#Onboarding)     |
| 3   | Word List        |  [Click](#WordList)     |
| 4   | Learning History| [Click](#Learning\ History)   |
| 5   | Recommendation of YouTube| [Click](#Recommendation\ of\ YouTube)   |
| 6   | Register Word| [Click](#Register\ word)   |
| 7   | Learning System| [Click](#Learning\ System)   |  

### Future Functions  
 FuncID      | Name | Detail    |
| :---        |    :----:   |       :---: |
| 8      | Web Browser for Mobile       | Not Yet   |
| 9      | Speaking Contest       | Not Yet   |


# Sign Up, Sign in

Basically, this feature relies on **AWS Cognito**.  
ID Provider is only **Google**. Because this app has its function on Chrome, highlights text and call API to store text(word) in app.  

Both on Web and mobile, once user passes authentication, **never needs to sign-in again.**  

API Gateway needs TOKEN(maybe JWT??) to call API for security.


# Onboarding  

This feature is for first time to use this app. It should be like navigation of this app.

It is available to be seen again by user demand. It might be in **Help section.**

# WordList
This feature is one of main features. This list is generated/added by 2 ways.  
First one is by Chrome extension of TanGo. The other one is user input on Tango(Web and mobile).

### Details of function

 - English/Japanese meaning of word
 - Audio of pronunciation of word
 - Sample sentense including word
 - Japanese meaning of sample sentense 
 - Checking pronunciation of word user speak to mobile

This list is updated everyday. Updating is based on [Learning System](#Learning\ System) .

# Learning History
This feature shows how many words user learn on TanGo.
Also it has weekly, monthly view.  
It will show all user data. Like a **mean** number of words are learned by all user.

# Recommendation of YouTube
This feature is for practicing **pronounciation**.  
Only administrator can pick YouTube contents and post them on TanGo. Each post includes sentenses. They explain why the content is good for user. 

For example  

[![Sample](http://img.youtube.com/vi/oTPZWpQ9pbA/default.jpg)](http://www.youtube.com/watch?v=oTPZWpQ9pbA)  

```text
Talking about cultural differences.
Phrases I reccomend.
At 0:57: "That isn't very British."
At 4:38: "fall out with". (using past expression "fell out with" though.)

This video is only used easy clear words and expressions.  
I reccomend you to watch whole this video.
```
# Register word
# Learning System
