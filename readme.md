Testing
====


# Why?
  * verify that our code does what we want, in a repeatable, automated way
    * alternative is manually running the code -- works fine for small problems but each time you add a feature, you have one more thing to manually test, and you need to test everything to make sure you didn't break anything that was working before

# How?
  * in Ruby, we use rspec. (other languages have other testing frameworks)
    * rspec is a ruby gem, so we should specify which version we're targeting in a Gemfile, so people running our code later know which version we were using
  * rspec looks like this:

```
  describe "general thing you're testing" do
    it "does specific thing you care about" do
      expect(some_function_call()).to eq expected_result
    end
  end
```
