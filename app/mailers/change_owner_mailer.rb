class ChangeOwnerMailer < ApplicationMailer
    default from: 'from@example.com'

    def changeowner_mail(user,team)
      @user = user.email
      @team = team.name
      mail to: @user, subject: I18n.t('views.messages.change_infomation')
    end
end
