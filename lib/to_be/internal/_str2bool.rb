
=begin
=end

module ToBe
module Internal

  module Constants_

    FALSEY_PRECISE_STRINGS = [
      "0",
      "FALSE",
      "False",
      "NO",
      "No",
      "OFF",
      "Off",
      "false",
      "no",
      "off",
    ]

    TRUEY_PRECISE_STRINGS = [
      "1",
      "ON",
      "On",
      "TRUE",
      "True",
      "YES",
      "Yes",
      "on",
      "true",
      "yes",
    ]

    FALSEY_LOWERCASE_STRINGS = [
      "false",
      "no",
      "off",
      "0",
    ]

    TRUEY_LOWERCASE_STRINGS = [
      "true",
      "yes",
      "on",
      "1",
    ]

  end # module Constants_

  def self._str2bool s

    return nil if s.nil?

    return true if Constants_::TRUEY_PRECISE_STRINGS.include? s

    return false if Constants_::FALSEY_PRECISE_STRINGS.include? s

    s = s.strip.downcase

    return true if Constants_::TRUEY_LOWERCASE_STRINGS.include? s

    return false if Constants_::FALSEY_LOWERCASE_STRINGS.include? s

    nil
  end
end # module Internal
end # module ToBe


# ############################## end of file ############################# #

