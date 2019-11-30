class AgendaDestroyMailer < ApplicationMailer
    default from: 'from@example.com'

  def agendadestroy_mail(agenda)
    @email = agenda.team.members.pluck(:email)
    @agenda = agenda
    # @articles = agenda.includes(:articles)
    mail to: @email, subject: I18n.t('views.messages.destroy_infomation')
  end
end
