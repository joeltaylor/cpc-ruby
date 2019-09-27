# CPC-Ruby

The purpose of this public is to demonstrate the creation and management of a software project.

At its heart is not, in fact, to show off my proficiency in Ruby, but rather to draw attention to the auxiliary aptitudes of a programmer who Gets Things Done.

Perusal of:
* the **Ruby** code in `lib`,
* the **RSpec** tests in `spec`,   
* and Cucumber **Feature** and **Step** files in `feature`  

will give you a measure of the following:

1. Proficiency in Ruby
2. Test-driven development (TDD)
3. Behaviour-driven development (BDD)
4. Documentation (e.g. this README)
5. Management of dependencies (e.g. Gemfile)
6. Management of adjunct tools (e.g. `guard`)

## Executive Summary of My Approach To Solving Problems
1. Create `.feature` file in the `features` folder, wherein to define the problem and desired output in plain English[1], containing a large number of scenarios.
2. Run `cucumber` in the terminal and get the missing **Steps**
3. Create a `_steps.rb` file in the `feature/step_definitions` folder and define how the **Feature** inputs will be passed to the methods.
4. Create a `_spec.rb` file in the `spec` folder with a subset of the test inputs and expectations from the Cucumber **Feature**.
5. Create a `.rb` file in the `lib` folder.
6. Apply TDD (Red-Green) until the RSpecs are satisfied.
7. Run `cucumber` on all the scenarios and make adjustments to the Ruby code or the RSpecs until all the scenarios in the **Feature** are satisfied.

[1] Gherkin tends to become more pseudo-code than English in real life, but it's still more readable to a non-developer than RSpec or JUnit.

## Ruby code in `lib/cpc`

Inside the `Cpc` Module are two kinds of Modules:
1. Core functionality
2. Applied functionality

Core functionality Modules are prepended with `My`, e.g. `MyStrings` and `MyStructuredData`, and contain abstractions of generally useful things that I use in my day-to-day coding.

Applied functionality Modules are where I write code to solve particular applied problems, e.g. coding puzzles from `Code Wars`.

### Class vs Module

More for discipline than expedience, most of the Ruby files are Modules rather than Classes, in order to clarify whether my methods [really need to keep track of state](https://stackoverflow.com/questions/2671545/when-to-use-a-module-and-when-to-use-a-class).

To quote the excellent answer on Stack Overflow:

> A class should be used for functionality that will require instantiation or that needs to keep track of state. A module can be used either as a way to mix functionality into multiple classes, or as a way to provide one-off features that don't need to be instantiated or to keep track of state. A class method could also be used for the latter.
>
> With that in mind, I think the distinction lies in whether or not you really need a class. A class method seems more appropriate when you have an existing class that needs some singleton functionality. If what you're making consists only of singleton methods, it makes more sense to implement it as a module and access it through the module directly.
