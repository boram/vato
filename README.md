# Vato

SCSS button mixins clean enough for a vato's pressed Pendleton.

## Installation

Add this line to your application's Gemfile:

    gem 'vato'

And then execute:

    $ bundle

## Usage

Add the `vato-button` mixin on links, buttons and submit inputs.

```SCSS
a, button, input[type=submit] {
  @include vato-button;
}
```

You can specify the theme and border radius.

```SCSS
button {
  @include vato-button(red, .2em);
}
```

By default, theme defaults to `flat-white` and border to `0`.

### Icons

Add [FontAwesome icons](http://fortawesome.github.com/Font-Awesome/) by adding the `vato-icon` mixin.

You can specify the icon name, position (left or right) and border radius.

```SCSS
button {
  @include vato-button(red, .2em);
  @include vato-icon(home, right, .8em);
}
```

By default, icon name defaults to `home`, position defaults to `left` and border radius to `2.3em`.

### Button Groups

The following is an example of how to set up a button group.

```SCSS
nav {
  a {
    @include vato-button(yellow);
  }

  a.home-button {
    @include vato-icon(home);
  }

  a.contact-button {
    @include vato-icon(coffee);
  }

  a.about-button {
    @include vato-icon(envelope);
  }

  @include vato-button-group(.3em);
}
```

The `vato-button-group` mixin takes the border radius as its argument and defaults to `0`.

The mixin must be placed after the button styles to ensure border radii and positioning directives on the individual buttons overridden by the group style.


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
