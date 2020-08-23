extern crate common_lib;
extern crate common_tonic_rust;

use common_tonic_rust::common::Config;

pub fn main() {
    let cfg = Config::default();
    common_lib::do_something(&cfg);
}
