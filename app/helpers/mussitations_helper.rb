module MussitationsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == "create"
      confirm_mussitations_path
    elsif action_name == 'edit'
      mussitation_path
    end
  end
end
