require "test_helper"

class RealStateTest < ActiveSupport::TestCase
  test "validations" do
    model = RealState.new
    assert !model.valid?
    error_messages = model.errors.full_messages
    assert (error_messages.include? "Name is too short (minimum is 1 character)")
    assert (error_messages.include? "Real state type is not included in the list")
    assert (error_messages.include? "Street is too short (minimum is 1 character)")
    assert (error_messages.include? "External number is too short (minimum is 1 character)")
    assert (error_messages.include? "External number only alphanumerics and dash (-)")
    assert (error_messages.include? "Neighborhood is too short (minimum is 1 character)")
    assert (error_messages.include? "City is too short (minimum is 1 character)")
    assert (error_messages.include? "Country is the wrong length (should be 2 characters)")
    assert (error_messages.include? "Country only ISO 3166 alpha 2 codes")
    assert (error_messages.include? "Rooms is not a number")
    assert (error_messages.include? "Bathrooms is not a number")
    assert (error_messages.include? "Comments is too short (minimum is 0 characters)")
  end

  test "add" do
    before_count = RealState.count
    RealState.create!([
      { name: 'Place1', real_state_type: 'house', street: 'street1', external_number: 'number1', internal_number: 'i1', neighborhood: 'neighborhood1', city: 'city1', country: 'ES', rooms: 0, bathrooms: 1.0, comments: '' }
    ])
    after_count = RealState.count
    assert after_count == (before_count + 1)
  end

  test "update" do
    model = RealState.last
    id = model.id
    model.name = "name updated"
    model.save!
    modified_model = RealState.find(id)
    assert modified_model.name == "name updated"
  end

  test "remove" do
    before_count = RealState.count
    RealState.last.destroy!
    after_count = RealState.count
    assert after_count == (before_count - 1)
  end
end
