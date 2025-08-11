

require 'to_be/internal/_str2bool'

=begin
=end

module ToBe

  # Determines the "truthy" nature of whether the given string is "truthy"
  # and, if so, whether it is "falsey" or "truey".
  #
  # Returns:
  # - `None` - string is not classified as "truthy";
  # - `False` - string is classified as "truthy" and is deemed "falsey";
  # - `True` - string is classified as "truthy" and is deemed "truey";
  def str2bool s

    ToBe::Internal::_str2bool s
  end

  # Indicates that the given string, when trimmed, is classified as "truthy"
  # and is deemed as "falsey".
  def string_falsey? s

    return false == ToBe::Internal::_str2bool(s)
  end

  # Indicates that the given string, when trimmed, is classified as "truthy"
  # and is deemed as "truey".
  def string_truey? s

    return true == ToBe::Internal::_str2bool(s)
  end

  # Indicates that the given string, when trimmed, is classified as "truthy"
  # (and is deemed as either "falsey" or "truey").
  def string_truthy? s

    return !ToBe::Internal::_str2bool(s).nil?
  end

  module_function :string_falsey?, :string_truey?, :string_truthy?
end # module ToBe


# ############################## end of file ############################# #

