require_relative 'config/enviroment'
require 'dotenv'

Dotenv.load

use HomeController
use TopicController
use QuestionController
run ApplicationController