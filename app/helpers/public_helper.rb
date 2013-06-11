module PublicHelper
  def userslist
    list = "<ul>"
    if @users.present?
       @users.try(:each) do |user|
       list +=  "<li>#{user.name}</li>"
       end
     else
      list += "<li>No Users Present At Now</li>"
    end 
    list += "</ul>"
    return list
  end

end
