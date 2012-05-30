## v0.16.0

    Add VMWare Tools for ESX v5.0u1, along with a vmware-tools-upgrade
recipe.  The yumrepo::vmware-tools recipe is backwards incompatible.
Unfortunately there is no way to upgrade vmware-tools rpm files without
yanking them out, and replacing them.

    One must ensure the `vmware-tools-upgrade` recipe will run **before**
the `vmware-tools` recipe.  Otherwise the 4.1 recipe will directly
conflict with the 5.0u1 version of the recipe.

    I also added some attribute sanity tests for this new version, enjoy!
