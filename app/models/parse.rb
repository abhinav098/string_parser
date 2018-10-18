class Parse < ApplicationRecord
  validates :text, presence:true, length: { maximum: 5000 }

  PARAMETERS = %w[c_plus_plus c_sharp vb c java ruby rails physics chemistry mathematics
    social_science history science geography bus train rickshaw bike car]

  PARAMETERS.each do |parameter|
    define_method(:"count_#{parameter}") do
      text.gsub('.','').gsub('!','').gsub(',','').gsub(' ','').downcase.scan(/#{parse_string(parameter)}/).length
    end
  end

  def parse_string(parameter)
    if parameter == "c_plus_plus"
      return 'c++'
    elsif parameter == 'c_sharp'
      return'c#'
    elsif parameter == 'social_science'
      return 'socialscience'
    else
      return parameter
    end
  end
end
