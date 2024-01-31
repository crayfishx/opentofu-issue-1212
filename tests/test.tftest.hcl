run "first" {
  command = apply
}

run "second" {
  command = plan

# Uncommenting this block results in failure to assign
# the variable below.
#
#  module {
#    source = "./tests/testmodule"
#  }

  variables {
    foo = run.first.foo
  }

}


