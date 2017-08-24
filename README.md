# Pre-work - *Calc Tipper*

**Calc Tipper** is a tip calculator application for iOS.

Submitted by: **Danny Lau**

Time spent: **3** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:

* [x] Add a color theme to the settings view. In viewWillAppear, update views with the correct theme colors.
* [x] The Tip calculator has a very primitive UI. Feel free to play with colors, layout, or even modify the UI to improve it.

The following **additional** features are implemented:

* [x] When a new default tip is clicked it changes the view color
* [x] After you set a default value, when you go back to the main view page the values are automatically updated

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://res.cloudinary.com/danlau168/image/upload/v1503554588/tipcalc2_vpcjuo.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** [Swift is a well written language that is easy to pick up and develop with. The XCode infrastructure has a good UI and layout that is easy to work with. I'd explain to another developer than an outlet is an easy way to get a reference to an item in the storyboard, and they can send messages to view objects. It is used to change properties of a control. An action is used in trigger events when you want the app to do something, usually in reaction to a user response].

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:** [A strong reference cycle is when two instances have strong references to each other to keep each other alive. Similiarly, because closures are references types, when a closure is assigned to a property then the reference to the closure is assigned, thereby keeping the class instance and the closure alive. The capture occurs if the closure's body accesses the property of the instance, or when the closure calls a method on the instance (like self.method()), causing the closure to capture 'self']

## License

    Copyright [2017] [Danny Lau]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.