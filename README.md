# cookbook-dokku-alt

Chef cookbook for [dokku-alt](https://github.com/dokku-alt/dokku-alt).

This cookbook is built to be used with [Packer](https://www.packer.io/) but could also be used in other Chef environments.

## Supported Platforms

As dokku-alt supports only Ubuntu 14.04, this cookbook supports only 14.04 as well.

## Recipes

* `dokku-alt::default` - Install dokku-alt
* `dokku-alt::installer` - Set up dokku-alt web installer on port 80

## License and Authors

Author: Richard Lee (richard@polydice.com)

License: Apache
