Contributing guide
Welcome! This is a step-by-step guide on how to get started contributing code to the Zulip organized team chat open-source project. Thousands of people use Zulip every day, and your work on Zulip will have a meaningful impact on their experience. We hope you'll join us!

To learn about ways to contribute without writing code, please see our suggestions for how you can support the Zulip project.

Learning from the docs
Zulip has a documentation-based approach to onboarding new contributors. As you are getting started, this page will be your go-to for figuring out what to do next. You will also explore other guides, learning about how to put together your first pull request, diving into Zulip's subsystems, and much more. We hope you'll find this process to be a great learning experience.

This page will guide you through the following steps:

Getting started
Finding an issue to work on
Getting help as you work on your first pull request
Learning what makes a great Zulip contributor
Submitting a pull request
Going beyond the first issue
Any time you feel lost, come back to this guide. The information you need is likely somewhere on this page (perhaps in the list of common questions), or in one of the many references it points to.

If you've done all you can with the documentation and are still feeling stuck, join the Zulip development community to ask for help! Before you post, be sure to review community norms and where to post your question. The Zulip community is governed by a code of conduct.

Getting started
Learning how to use Git (the Zulip way)
Zulip uses GitHub for source control and code review, and becoming familiar with Git is essential for navigating and contributing to the Zulip codebase. Our guide to Git will help you get started even if you've never used Git before.

If you're familiar with Git, you'll still want to take a look at our Zulip-specific Git tools.

Setting up your development environment and diving in
To get started contributing code to Zulip, you will need to set up the development environment for the Zulip codebase you want to work on. You'll then want to take some time to familiarize yourself with the code.

Server and web app
Install the development environment.
Familiarize yourself with using the development environment.
Go through the new application feature tutorial to get familiar with how the Zulip codebase is organized and how to find code in it.
Flutter-based mobile app
Set up a development environment following the instructions in the project README.
Start reading recent commits to see the code we're writing. Use either a graphical Git viewer like gitk, or git log -p with the "secret" to reading its output.
Pick some of the code that appears in those Git commits and that looks interesting. Use your IDE to visit that code and to navigate to related code, reading to see how it works and how the codebase is organized.
Desktop app
Follow this documentation to set up the Zulip Desktop development environment.

Terminal app
Follow this documentation to set up the Zulip Terminal development environment.

Finding an issue to work on
Where to look for an issue
Now you're ready to pick your first issue! Zulip has several repositories you can check out, depending on your interests. There are hundreds of open issues in the main Zulip server and web app repository alone.

You can look through issues tagged with the "help wanted" label, which is used to indicate the issues that are open for contributions. You'll be able to claim unassigned issues, which you can find using the no:assignee filter in GitHub. You can also pick up issues that are assigned but are no longer being worked on.

Some repositories use the "good first issue" label to tag issues that are especially approachable for new contributors.

Here are some handy links for issues to look through:

Server and web app
Mobile apps: no "help wanted" label, but see the project board for the upcoming Flutter-based app. Look for issues up through the "Launch" milestone, and that aren't already assigned.
Desktop app
Terminal app
Python API bindings and bots
Picking an issue to work on
There's a lot to learn while making your first pull request, so start small! Many first contributions have fewer than 10 lines of changes (not counting changes to tests).

We recommend the following process for finding an issue to work on:

Find an issue tagged with the "help wanted" label that is either unassigned, or looks to be abandoned.
Read the description of the issue and make sure you understand it.
If it seems promising, poke around the product (on chat.zulip.org or in the development environment) until you know how the piece being described fits into the bigger picture. If after some exploration the description seems confusing or ambiguous, post a question on the GitHub issue, as others may benefit from the clarification as well.
When you find an issue you like, try to get started working on it. See if you can find the part of the code you'll need to modify (git grep is your friend!) and get some idea of how you'll approach the problem.
If you feel lost, that's OK! Go through these steps again with another issue. There's plenty to work on, and the exploration you do will help you learn more about the project.
An assigned issue can be considered abandoned if:

There is no recent contributor activity.
There are no open PRs, or an open PR needs work in order to be ready for review. For example, a PR may need to be updated to address reviewer feedback or to pass tests.
Note that you are not claiming an issue while you are iterating through steps 1-4. Before you claim an issue, you should be confident that you will be able to tackle it effectively.

Additional tips for the main server and web app repository:

We especially recommend browsing recently opened issues, as there are more likely to be easy ones for you to find.
Take a look at issues with the "good first issue" label, as they are especially accessible to new contributors. However, you will likely find issues without this label that are accessible as well.
All issues are partitioned into areas like admin, compose, emoji, hotkeys, i18n, onboarding, search, etc. Look through our list of labels, and click on some of the area: labels to see all the issues related to your areas of interest.
Avoid issues with the "difficult" label unless you understand why it is difficult and are highly confident you can resolve the issue correctly and completely.
Claiming an issue
In the main server/web app repository and Zulip Terminal repository
The Zulip server/web app repository (zulip/zulip) and the Zulip Terminal repository (zulip/zulip-terminal) are set up with a GitHub workflow bot called Zulipbot, which manages issues and pull requests in order to create a better workflow for Zulip contributors.

To claim an issue in these repositories, simply post a comment that says @zulipbot claim to the issue thread. If the issue is tagged with a help wanted label and is not assigned to someone else, Zulipbot will immediately assign the issue to you.

Note that new contributors can only claim one issue until their first pull request is merged. This is to encourage folks to finish ongoing work before starting something new. If you would like to pick up a new issue while waiting for review on an almost-ready pull request, you can post a comment to this effect on the issue you're interested in.

In other Zulip repositories
There is no bot for other Zulip repositories (zulip/zulip-flutter, etc.). If you are interested in claiming an issue in one of these repositories, simply post a comment on the issue thread saying that you've started work on the issue and would like to claim it. In your comment, describe what part of the code you're modifying and how you plan to approach the problem, based on what you learned in steps 1–4 above.

There is no need to @-mention the issue creator in your comment. There is also no need to post the same information in multiple places, for example in a chat thread in addition to the GitHub issue.

Please follow the same guidelines as described above: find an issue labeled "help wanted", and only pick up one issue at a time to start with.

Getting help
You may have questions as you work on your pull request. For example, you might not be sure about some details of what's required, or have questions about your implementation approach. Zulip's maintainers are happy to answer thoughtfully posed questions, and discuss any difficulties that might arise as you work on your PR.

If you haven't done so yet, now is the time to join the Zulip development community. If you'd like, introduce yourself in the #new members channel, using your name as the topic.

You can get help in public channels in the community:

Review the Zulip development community guidelines.

Decide where to post. If there is a discussion thread linked from the issue you're working on, that's usually the best place to post any clarification questions about the issue. Otherwise, follow these guidelines to figure out where to post your question. Don’t stress too much about picking the right place if you’re not sure, as moderators can move your question thread to a different channel if needed.

Write up your question, being sure to follow our guide on asking great questions. The guide explains what you need to do make sure that folks will be able to help you out, and that you're making good use of maintainers' limited time.

Review your message before you send it. Will your question make sense to someone who is familiar with Zulip, but might not have the details of what you are working on fresh in mind?

Well-posed questions will generally get a response within 1-2 business days. There is no need to @-mention anyone when you ask a question, as maintainers keep a close eye on all the ongoing discussions.

What makes a great Zulip contributor?
As you're working on your first code contribution, here are some best practices to keep in mind.

Asking great questions. It's very hard to answer a general question like, "How do I do this issue?" When asking for help, explain your current understanding, including what you've done or tried so far and where you got stuck. Post tracebacks or other error messages if appropriate. For more advice, check out our guide!
Learning and practicing Git commit discipline.
Submitting carefully tested code. See our detailed guide on how to review code (yours or someone else's).
Posting screenshots or GIFs for frontend changes.
Working to make your pull requests easy to review.
Clearly describing what you have implemented and why. For example, if your implementation differs from the issue description in some way or is a partial step towards the requirements described in the issue, be sure to call out those differences.
Being responsive to feedback on pull requests. This means incorporating or responding to all suggested changes, and leaving a note if you won't be able to address things within a few days.
Being helpful and friendly on the Zulip community server.
Submitting a pull request
See the guide on submitting a pull request for detailed instructions on how to present your proposed changes to Zulip.

The pull request review process guide explains the stages of review your PR will go through, and offers guidance on how to help the review process move forward.

It's OK if your first issue takes you a while; that's normal! You'll be able to work a lot faster as you build experience.

Beyond the first issue
To find a second issue to work on, we recommend looking through issues with the same area: label as the last issue you resolved. You'll be able to reuse the work you did learning how that part of the codebase works. Also, the path to becoming a core developer often involves taking ownership of one of these area labels.

Common questions
What if somebody is already working on the issue I want to claim? There are lots of issues to work on (likely hundreds in the server repository)! If somebody else is actively working on the issue, you can find a different one, or help with reviewing their work.

What if it looks like the person who's assigned an issue is no longer working on it? Post a comment on the issue, e.g., "Hi @ someone! Are you still working on this one? I'd like to pick it up if not." You can pick up the issue if they say they don't plan to work on it more.

What if I don't get a response? If you don't get a reply within 2-3 days, go ahead and post a comment that you are working on the issue, and submit a pull request. If the original assignee ends up submitting a pull request first, no worries! You can help by providing feedback on their work, or submit your own PR if you think a different approach is needed (as described above).
What if there is already a pull request for the issue I want to work on? See our guide on continuing unfinished work.

What if somebody else claims an issue while I'm figuring out whether or not to work on it? No worries! You can contribute by providing feedback on their pull request. If you've made good progress in understanding part of the codebase, you can also find another "help wanted" issue in the same area to work on.

Can I work on an old issue? Of course! Open issues marked as “help wanted” are generally eligible to be worked on. If you find that the context around the issue has changed (e.g., the UI looks different), do your best to apply the current patterns, and comment on any differences from the spec in your PR description.

If picking up a bug, start by checking if you can replicate it. If it no longer replicates, post a comment on the issue explaining how you tested the behavior, and what you saw, with screenshots as appropriate. And if you can replicate it, fixing it is great!

If you're starting a major project where the issue was filed more than a couple of years ago, it's a good idea to post to the development community discussion thread for that issue to check if the thinking around it has changed.

Can I come up with my own feature idea and work on it? We welcome suggestions of features or other improvements that you feel would be valuable. If you have a new feature you'd like to add, you can start a conversation in our development community explaining the feature idea and the problem that you're hoping to solve.

I'm waiting for the next round of review on my PR. Can I pick up another issue in the meantime? Someone's first Zulip PR often requires quite a bit of iteration, so please make sure your pull request is reviewable and go through at least one round of feedback from others before picking up a second issue. After that, sure! If Zulipbot does not allow you to claim an issue, you can post a comment describing the status of your other work on the issue you're interested in (including links to all open PRs), and asking for the issue to be assigned to you. Note that addressing feedback on in-progress PRs should always take priority over starting a new PR.

I think my PR is done, but it hasn't been merged yet. What's going on?

Double-check that you have addressed all the feedback, including any comments on Git commit discipline, and that automated tests are passing.
If all the feedback has been addressed, did you leave a comment explaining that you have done so and requesting another review? If not, it may not be clear to project maintainers or reviewers that your PR is ready for another look.
There may be a pause between initial rounds of review for your PR and final review by project maintainers. This is normal, and we encourage you to work on other issues while you wait.
If you think the PR is ready and haven't seen any updates for a couple of weeks, it can be helpful to leave another comment. Summarize the overall state of the review process and your work, and indicate that you are waiting for a review.
Finally, Zulip project maintainers are people too! They may be busy with other work, and sometimes they might even take a vacation. ;) It can occasionally take a few weeks for a PR in the final stages of the review process to be merged.
Outreach programs
Zulip regularly participates in Google Summer of Code (GSoC) and Outreachy. We have been a GSoC mentoring organization since 2016, and we accept 15-20 GSoC participants each summer. In the past, we’ve also participated in Google Code-In, and hosted summer interns from Harvard, MIT, and Stanford.

Check out our outreach programs overview to learn more about participating in an outreach program with Zulip. Most of our program participants end up sticking around the project long-term, and many have become core team members, maintaining important parts of the project. We hope you apply!
