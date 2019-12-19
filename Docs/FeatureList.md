# Overview

| FeatID      | Name | Detail    |
| :---        |    :----:   |       :---: |
| 1      | Sign Up, Sign in       | [Click](#Sign\ Up,\ Sign\ in)   |
| 2   | Onboarding        |  [Click](#Onboarding)     |
| 3   | Word List        |  [Click](#WordList)     |
| 4   | Learning History| [Click](#Learning\ History)   |
| 5   | Recommendation of YouTube| [Click](#Recommendation\ of\ YouTube)   |
| 6   | Register Word| [Click](#Register\ word)   |
| 7   | Learning System| [Click](#Learning\ System)   |  

### Future Features
 FeatID      | Name | Detail    |
| :---        |    :----:   |       :---: |
| 8      | Web Browser for Mobile       | Not Yet   |
| 9      | Speaking Contest       | Not Yet   |


# Sign Up, Sign in

Basically, this feature relies on **AWS Cognito**.  
ID Provider is only **Google**. Because this app provides an important feature on Chrome extension, which highlights text and call API to store word in app.  

Both on Web and mobile, once user passes authentication, **never needs to sign-in again.**  

API Gateway needs TOKEN(maybe JWT??) to call API for security.


# Onboarding  

This feature is for first time to use this app. It should be like navigation of this app.

It is available to be seen again by user demand. It might be in **Help section.**

# WordList
This feature is one of main features. This list is generated/added by 2 ways.  
First one is by Chrome extension of TanGo. The other one is user input on Tango(Web and mobile).

### Details of WordList feature

 - English/Japanese meaning of word
 - Audio of pronunciation of word
 - Sample sentense including word
 - Japanese meaning of sample sentense 
 - Checking pronunciation of word user speak to mobile

wordlist is updated at every time a user adds word, and at specific time. Updating is based on [Learning System](#Learning\ System) .

# Learning History
This feature shows how many words user learn on TanGo.
Also it has weekly, monthly view.  
It will show all user data. Like a **mean** number of words are learned by all user.

# Recommendation of YouTube
This feature is for practicing **pronounciation**.  
Only administrator can pick YouTube contents and post them on TanGo. Each post includes sentenses. They explain why the content is good for user. 

For example  

[![Sample](https://img.youtube.com/vi/oTPZWpQ9pbA/default.jpg)](http://www.youtube.com/watch?v=oTPZWpQ9pbA)  

```text
Talking about cultural differences.
Phrases I reccomend are
At 0:57: "That isn't very British."
At 4:38: "fall out with". (using past expression "fell out with" though.)

This video is only used easy and simple words and expressions.  
I reccomend you to watch whole this video.
```
# Register word
[WordList](#WordList) is added by Chrome extension feature of TanGo.
An User can highlight a word. Then double fingers click it, click `add word list`.  
Or on main app of TanGo, a user can input word and add it directly.

# Learning System
For learning English words effectively, TanGo shows same words a couple of times.  
For example,  
At 18th Dec 2019, A user add `daunt` to TanGo.  
At 18th Dec 2019, Tango shows `daunt` in WordList.  
At 20th Dec 2019, Tango shows `daunt` in WordList again.  
At 27th Dec 2019, Tango shows `daunt` in WordList again.  
At 27th Jan 2020, Tango shows `daunt` in WordList again.  


# Web Browser for Mobile
This is alternative for Chrome extension. Because Google Chrome on mobile doesn't allow using extension.   
For now, I don't know what component for this feature. But I'm sure it is popular solution.

# Speaking Contest
All users can participate this contest.  
users send short speech( less than 3min) about specific topic Tango provides.  
Then, all users can listen to speeches and review them.  
Tango provides rubric for review.
