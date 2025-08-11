

require 'to_be/truthy'

class String

  # Indicates that the instance, when trimmed, is classified as "truthy" and
  # is deemed as "falsey".
  #
  # See ToBe::string_falsey?
  def falsey?

    return ToBe::string_falsey? self
  end

  # Indicates that the instance, when trimmed, is classified as "truthy" and
  # is deemed as "falsey".
  #
  # See ToBe::string_truey?
  def truey?

    return ToBe::string_truey? self
  end

  # Indicates that the instances, when trimmed, is classified as "truthy"
  # (and is deemed as either "falsey" or "truey").
  #
  # See ToBe::string_truthy?
  def truthy?

    return ToBe::string_truthy? self
  end
end # class String

