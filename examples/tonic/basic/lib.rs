extern crate common_tonic_rust;
use common_tonic_rust::common::Config;

pub fn do_something(x: &Config) -> bool {
    x.verbose
}
