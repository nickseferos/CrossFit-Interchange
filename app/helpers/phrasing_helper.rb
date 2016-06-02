module PhrasingHelper
  # You must implement the can_edit_phrases? method.
  # Example:
  # 
  def can_edit_phrases?
   # current_user.is_admin?
   warden.authenticate! scope: :admin
  end
end
