require 'apiclient'

$root_config = YAML.load_file(__dir__ + "/../config/config.yml")
$client = SkyBet::Request.new($root_config[:localenv])