Given(/^I enter text for "(.*?)"$/) do |arg1|
  req_user_data = @user_data_by_r_c[arg1]
  req_obj_repo = @obj_repo_row[req_user_data['obj_repo_id']]
  text_to_enter = req_user_data['Input Value 1']
  # step "I wait until \"#{text_to_enter}\" with \"#{req_obj_repo[1]}\" \"#{req_obj_repo[2]}\" is ready"
  step "I enter \"#{text_to_enter}\" in the text field with \"#{req_obj_repo[1]}\" \"#{req_obj_repo[2]}\""
end

Then(/^I click on "(.*?)"$/) do |arg1|
  req_user_data = @user_data_by_r_c[arg1]
  req_obj_repo = @obj_repo_row[req_user_data['obj_repo_id']]
  step "I click the \"#{req_obj_repo[0]}\" with \"#{req_obj_repo[1]}\" \"#{req_obj_repo[2]}\""
end

Then(/^I flash on "(.*?)"$/) do |arg1|
  req_user_data = @user_data_by_r_c[arg1]
  req_obj_repo = @obj_repo_row[req_user_data['obj_repo_id']]
  step "I flash the \"#{req_obj_repo[0]}\" with \"#{req_obj_repo[1]}\" \"#{req_obj_repo[2]}\""
end

Then(/^I select "(.*?)" from list$/) do |arg1|
  req_user_data = @user_data_by_r_c[arg1]
  req_obj_repo = @obj_repo_row[req_user_data['obj_repo_id']]
  item_to_select = req_user_data['Input Value 1']
  step "I select the value \"#{item_to_select}\" in select list with \"#{req_obj_repo[1]}\" \"#{req_obj_repo[2]}\""
end

Given(/^I read the data from the "(.*?)"$/) do |arg1|
  require 'roo'
  require 'spreadsheet'
  @myRoot = File.join(File.dirname(__FILE__), '/')
  book = Roo::Spreadsheet.open("#{@myRoot}/#{arg1}")

  obj_repo = book.sheet("obj_repo")
  @obj_repo_row = {}
  for i in 1..obj_repo.last_row
    @obj_repo_row[obj_repo.row(i)[0]] = obj_repo.row(i)[1..obj_repo.last_column]
  end

  user_data = book.sheet("user_data")
  @user_data_row = {}
  for i in 1..user_data.last_row
    @user_data_row[user_data.row(i)[0]] = user_data.row(i)[1..user_data.last_column]
  end

  @user_data_by_r_c = {}
  # Write this loop to generate "row value"=> ["COLUMN_ID", "Cell Value"]
  # To get the values use @user_data_by_r_c["ROW_ID"]["COLUMN_ID"]
  for i in 1..user_data.last_row
    ud = {}
    # Take the values from the first row starting from second column
    column_vars = user_data.row(1)
    # Loop through the array column_var and create hash for each row item ["COLUMN_ID", "Cell Value"]
    for e in 1..column_vars.length
      ud[column_vars[e]] = user_data.row(i)[e]
    end
    # Put the newly created hash into @user_data_by_r_c
    @user_data_by_r_c[user_data.row(i)[0]] = ud
  end
  # @user_data_by_r_c["ping"]["Response"]
  # @user_data_by_r_c["ping"]["Result"]
end
