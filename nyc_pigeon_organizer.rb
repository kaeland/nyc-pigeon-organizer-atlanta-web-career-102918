require "pry"
require "pry-nav"

def nyc_pigeon_organizer(data)
  # write your code here!
  name_hash = {}
  data.each do |trait, values|
    # trait == :color, :gender, :lives
    # trait_hash = {}
    values.each do |description, value_array|
      # description == :purple, :grey, :white
      value_array.each do |pigeon_name|
        if name_hash[pigeon_name].nil?
          name_hash[pigeon_name] = {}
          name_hash[pigeon_name][trait] = [ description.to_s ]
        elsif name_hash[pigeon_name][trait] == nil
          name_hash[pigeon_name][trait] = [ description.to_s ]
        else
          # binding.pry
          name_hash[pigeon_name][trait] << description.to_s
        end
      end
    end
  end
  name_hash
end