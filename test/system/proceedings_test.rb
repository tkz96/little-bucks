require 'application_system_test_case'

class ProceedingsTest < ApplicationSystemTestCase
  setup do
    @proceeding = proceedings(:one)
  end

  test 'visiting the index' do
    visit proceedings_url
    assert_selector 'h1', text: 'Proceedings'
  end

  test 'should create proceeding' do
    visit proceedings_url
    click_on 'New proceeding'

    fill_in 'Amount', with: @proceeding.amount
    fill_in 'Name', with: @proceeding.name
    fill_in 'User', with: @proceeding.user_id
    click_on 'Create Proceeding'

    assert_text 'Proceeding was successfully created'
    click_on 'Back'
  end

  test 'should update Proceeding' do
    visit proceeding_url(@proceeding)
    click_on 'Edit this proceeding', match: :first

    fill_in 'Amount', with: @proceeding.amount
    fill_in 'Name', with: @proceeding.name
    fill_in 'User', with: @proceeding.user_id
    click_on 'Update Proceeding'

    assert_text 'Proceeding was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Proceeding' do
    visit proceeding_url(@proceeding)
    click_on 'Destroy this proceeding', match: :first

    assert_text 'Proceeding was successfully destroyed'
  end
end
