require "rack/test"
require "test/unit"

# always use local seneca not the one u installed
this_dir = File.join(__FILE__, "..")
$LOAD_PATH.unshift File.expand_path(this_dir)

require "seneca"
