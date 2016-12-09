# Git Bisect Demo Ruby

The purpose of this program is establish conditions where a [Git
Bisect](https://git-scm.com/docs/git-bisect) would be a useful problem solving
tool.

This is a companion repository to one I built in Elixir, available
[here](https://github.com/jwworth/git_bisect_demo).

### Installation

Install Ruby. Then:

```
$ git clone https://github.com/jwworth/git_bisect_demo_ruby.git
$ cd git_bisect_demo_ruby
$ git reset HEAD^
$ ruby test/regression_test.rb
```

The last commit introduces a failing test, `"test_handles_no_name"`.

This test covers behavior that 'used to work', but now doesn't: a regression.
It was never covered by an automated test, until now.

The desired behavior was specified by the module's inline comments:

> Greets the user by name, or **by saying "Hello, World!" if no name is
> given**.

Using the failing test, execute a Git bisect to identify the commit that
introduced the regression. Then, read the commit message and try to understand
and explain what happened.

Here's the command to run just the failing test:

```
$ ruby test/regression_test.rb
```

### Basic Commands

```
$ git bisect start
$ git bisect good
$ git bisect bad
$ git log --graph --oneline --decorate --color --all
$ git bisect reset
$ git bisect run <testfile>
```

### License

This project is released under the same terms and conditions as its
predecessor, available [here](https://github.com/jwworth/git_bisect_demo).