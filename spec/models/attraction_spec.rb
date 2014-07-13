# == Schema Information
#
# Table name: attractions
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  country_id  :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Attraction do
  pending "add some examples to (or delete) #{__FILE__}"
end
