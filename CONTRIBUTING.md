Contributing
============

It's good to hear that you want to contribute to Pony!

There are a number of ways to contribute to Pony. As this document is a little long, feel free to jump to the section that applies to you currently:

* [Feature request](#feature-request)
* [Bug report](#bug-report)
* [How to contribute](#how-to-contribute)
* [Pull request](#pull-request)

Additional notes regarding formatting:

* [Documentation formatting](#documentation-formatting)
* [Code formatting](#code-formatting)

Feature request
---------------

Feature requests for the ponylang mkdocs theme can be submitted as issues or pull requests to the repository itself.

Bug report
----------
First of all please [search existing issues](https://github.com/ponylang/mkdocs-theme/issues) to make sure your issue hasn't already been reported. If you cannot find a suitable issue — [create a new one](https://github.com/ponylang/mkdocs-theme/issues/new).

Provide the following details:

  - short summary of what you was trying to achieve,
  - a link to the page causing the bug,
  - expected result,
  - actual results and
  - browser and operationg system you were reproducing this buggy behaviour on

If possible, try to isolate the problem and provide just enough information to demonstrate it. Add any related information which might help to fix the issue.

How to contribute
-----------------
We use a fairly standard GitHub pull request workflow. If you have already contributed to a project via GitHub pull request, you can skip this section and proceed to the [specific details of what we ask for in a pull request](#pull-request). If this is your first time contributing to a project via GitHub, read on.

Here is the basic GitHub workflow:

1. Fork the mkdocs-theme repo. you can do this via the GitHub website. This will result in you having your own copy of the mkdocs-theme repo under your GitHub account. 
2. Clone your mkdocs-theme repo to your local machine
3. Make a branch for your change
4. Make your change on that branch
5. Push your change to your repo
6. Use the github ui to open a PR

Some things to note that aren't immediately obvious to folks just starting out:

1. Your fork doesn't automatically stay up to date with change in the main repo.
2. Any changes you make on your branch that you used for the PR will automatically appear in the PR so if you have more than 1 PR, be sure to always create different braches for them.
3. Weird things happen with commit history if you dont create your PR branches off of main so always make sure you have the main branch checked out before creating a branch for a PR

If you feel overwhelmed at any point, don't worry, it can be a lot to learn when you get started. Feel free to reach out via [Slack](https://www.ponylang.io/get-slack-invite) or the [pony developer mailing list](https://pony.groups.io/g/dev) for assistance.

You can get help using GitHub via [the official documentation](https://help.github.com/). Some hightlights include:

- [Fork A Repo](https://help.github.com/articles/fork-a-repo/)
- [Creating a pull request](https://help.github.com/articles/creating-a-pull-request/)
- [Syncing a fork](https://help.github.com/articles/syncing-a-fork/)

Pull request
------------
Before issuing a pull request we ask that you squash all your commits into a single logical commit. While your PR is in review, we may ask for additional changes, please do not squash those commits while the review is underway. Once everything is good, we'll then ask you to further squash those commits before merging. We ask that you not squash while a review is underway as it can make it hard to follow what is going on. Additionally, we ask that you:

* [Write a good commit message](http://chris.beams.io/posts/git-commit/)
* Issue 1 Pull Request per feature. Don't lump unrelated changes together.

If you aren't sure how to squash multiple commits into one, Steve Klabnik wrote [a handy guide](http://blog.steveklabnik.com/posts/2012-11-08-how-to-squash-commits-in-a-github-pull-request) that you can refer to.

We keep a [CHANGELOG](CHANGELOG.md) of all software changes with behavioural effects for the mkdocs-theme. 
Please create a changelog entry for your PR if it is such a change.

Please note, if your changes are purely to things like README, CHANGELOG etc, you can add [skip ci] as the last line of your commit message and your PR won't be run through our continuous integration systems. We ask that you use [skip ci] where appropriate as it helps to get changes through CI faster and doesn't waste resources that Appveyor and TravisCI are kindly donating to the Open Source community.

Did we already mention that it is awesome that you think about contributing?
